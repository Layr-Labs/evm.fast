import InitECandidate.Solver.MemSafe.HtabEntries.SetK
import InitECandidate.Solver.MemSafe.WaveHelpers.Keccak
import InitECandidate.Solver.MemSafe.Hooks.RecWs
import InitECandidate.Solver.Wit.Prod

/-!
# Facts about the callees of `nodedb_build`

* `noExc_htab_new`: `htab_new` ends in a return or abortively (only `alloc` and `trap_with`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.HtabEntries

variable {σ : Type} {X : Ctx 64}

theorem xchk_htab_new : xChk (nm "alloc" :: [nm "trap_with"]) false
    (declPair Guest.Software.guestFn_htab_new).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_htab_new (hX : X.code.lookup = guestCode) : NoExc σ X (nm "htab_new") := by
  have h0 := noExcTab_cons (noExcTab_nil (σ := σ) (X := X)) (noExc_of_pair (noExcTab_nil (σ := σ)) hX
    (p := declPair Guest.Software.guestFn_trap_with)
    (declPair_valid (List.getElem_mem (n := 3) (by decide)) ⟨_, rfl⟩) xchk_trap_with)
  have h1 := noExcTab_cons h0 (noExc_of_pair h0 hX (p := declPair Guest.Software.guestFn_alloc)
    (declPair_valid (List.getElem_mem (n := 7) (by decide)) ⟨_, rfl⟩) xchk_alloc)
  exact noExc_of_pair h1 hX (p := declPair Guest.Software.guestFn_htab_new)
    (declPair_valid (List.getElem_mem (n := 128) (by decide)) ⟨_, rfl⟩) xchk_htab_new

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.noExc_htab_new
