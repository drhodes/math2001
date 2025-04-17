import Lake
open Lake DSL

package math2001 where
  -- moreServerArgs := #[
  --   "-Dlinter.unusedVariables=false", -- ignores unused variables
  --   "-DquotPrecheck=false",
  --   "-DwarningAsError=false",
  --   "-Dpp.unicode.fun=true"  -- pretty-prints `fun a ↦ b`
  -- ]

lean_lib Library

@[default_target]
lean_lib Math2001 where
  globs := #[.submodules `Math2001]
  moreLeanArgs := #[
    "-Dlinter.unusedVariables=false", -- ignores unused variables
    "-DquotPrecheck=false",
    "-DwarningAsError=false",
    "-Dpp.unicode.fun=true"  -- pretty-prints `fun a ↦ b`
  ]

/-
want also
"-Dpush_neg.use_distrib=true", -- negates ¬(P ∧ Q) to (¬ P ∨ ¬ Q)
but currently only Lean core options can be set in lakefile
-/

-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"9d6b50d77c4"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"565cdcb266f"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"e23b08714da"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"b6d00f332a4"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"9a07518812f"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"bd6616c746d"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"132e5112a46"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"7458f0e73e0"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"132e5112a46"

require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"d3a6c9f3bd1" -- broken

-- require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"15e555e7342"
-- require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"4fcf5bdedea"
-- require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"b97737518d5"
-- require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"feec58a7ee9"



--require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"v{Lean.versionString}"
--require Duper from git "https://github.com/hrmacbeth/duper" @ "main"
--require autograder from git "https://github.com/robertylewis/lean4-autograder-main" @ "864b34ce06d8536aec0c38e57448c17d1f83572a"
