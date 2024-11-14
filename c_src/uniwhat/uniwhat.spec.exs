module Uniwhat

state_type "UniState"

spec init() :: {:ok :: label, state}

spec do_work_on_state(state) :: {:ok :: label, state}
