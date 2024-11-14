#include "uniwhat.h"

UNIFEX_TERM init(UnifexEnv *env) {
  UniState *state = unifex_alloc_state(env);

  state->data = malloc(1024);

  UNIFEX_TERM res = init_result_ok(env, state);

  unifex_release_state(env, state);

  return res;
}

UNIFEX_TERM do_work_on_state(UnifexEnv *env, UniState *state) {
  const char *foo = "foo";
  strcpy(state->data, foo);

  printf("state->data = %s\n", state->data);

  return do_work_on_state_result_ok(env, state);
}

void handle_destroy_state(UnifexEnv *env, UniState *state) {
  free(state->data);
}
