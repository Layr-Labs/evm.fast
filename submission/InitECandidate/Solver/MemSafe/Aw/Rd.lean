import InitECandidate.Solver.MemSafe.Aw.Vhd

set_option autoImplicit false

/-!
# Target F, part 5: read-only callees proved from the code (`RdSpec` via `PureB`)
`memeq`, `u256_eq`, `u256_is_zero`, `bswap64`, `u256_from_be`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

theorem rdSpec_memeq (hC : X.code.lookup = guestCode) : RdSpec σ X (nm "memeq") :=
  rdSpec_of_foot (footRet_pure_fn pureSpecs_nil hC (d := Guest.Software.guestFn_memeq)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 18) (by decide)) ⟨_, rfl⟩
    (by cbv) (by cbv))

theorem rdSpec_u256_eq (hC : X.code.lookup = guestCode) : RdSpec σ X (nm "u256_eq") :=
  rdSpec_of_foot (footRet_pure_fn pureSpecs_nil hC (d := Guest.Software.guestFn_u256_eq)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 45) (by decide)) ⟨_, rfl⟩
    (by cbv) (by cbv))

theorem rdSpec_u256_is_zero (hC : X.code.lookup = guestCode) : RdSpec σ X (nm "u256_is_zero") :=
  rdSpec_of_foot (footRet_pure_fn pureSpecs_nil hC (d := Guest.Software.guestFn_u256_is_zero)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 42) (by decide)) ⟨_, rfl⟩
    (by cbv) (by cbv))

theorem footRet_bswap64 (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "bswap64") (fun _ => True) (fun _ _ => False) (fun _ _ => True) :=
  footRet_pure_fn pureSpecs_nil hC (d := Guest.Software.guestFn_bswap64)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 23) (by decide)) ⟨_, rfl⟩
    (by cbv) (by cbv)

theorem rdSpec_bswap64 (hC : X.code.lookup = guestCode) : RdSpec σ X (nm "bswap64") :=
  rdSpec_of_foot (footRet_bswap64 hC)

theorem rdSpec_u256_from_be (hC : X.code.lookup = guestCode) : RdSpec σ X (nm "u256_from_be") :=
  rdSpec_of_foot (footRet_pure_fn (S := [nm "bswap64"])
    (fun f hf => by
      simp only [List.mem_singleton] at hf
      subst hf
      exact ⟨_, footRet_bswap64 hC⟩) hC (d := Guest.Software.guestFn_u256_from_be)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 86) (by decide)) ⟨_, rfl⟩
    (by cbv) (by cbv))

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.rdSpec_u256_from_be
#print axioms InitECandidate.Solver.MemSafe.Aw.rdSpec_memeq
