import InitECandidate.Solver.MemSafe.Rec.SplitVar
import InitECandidate.Solver.MemSafe.ShardsJL.Tabs
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `ssz_split_var_list` as a table entry, and the caller it unlocks

* `svTab`: `ssz_split_var_list` at `svSig false = ⟨[.any, .any, .any], [], [], false⟩`;
  **`svTab_sound`** for any hooks with `FoldOK` and `ssz_fail`'s fold entry (`ShardsJL.tab26`
  entry 30, `⟨[.any], [], [], false⟩`).
* **`svFold_sound`**: the Lean checker accepts `decode_bytes_list` at
  `⟨[.any, .any, .any, .any], [], [], false⟩` against `svTab ++ ShardsJL.tab26`
  (`sv_callers_ok`, `decide`), so its summary holds too.
-/

set_option maxRecDepth 1000000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

def svTab : CTab := [(nm "ssz_split_var_list", svSig false, [])]

/-- `ssz_fail`'s fold signature. -/
def sfSig : Sig := ⟨[.any], [], [], false⟩

theorem svTab_sound {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hfail : CSumm σ X Types.guestC H (nm "ssz_fail") sfSig []) :
    CTabSound σ X Types.guestC H svTab := by
  intro f sg cs hm
  simp only [svTab, List.mem_cons, List.not_mem_nil, or_false, Prod.mk.injEq] at hm
  obtain ⟨rfl, rfl, rfl⟩ := hm
  exact csumm_ssz_split_var_list hF.hH hF.hC hF.hal hF.hAC hF.hNS hF.hX hfail rfl rfl
    (fun h => by cases h)

def dblSig : Sig := ⟨[.any, .any, .any, .any], [], [], false⟩

def svCallers : List MCand :=
  [MCand.ofPair (nm "decode_bytes_list") (declPair Guest.Software.guestFn_decode_bytes_list) dblSig []]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem sv_callers_ok : chkChunk Types.guestC (svTab ++ ShardsJL.tab26) svCallers = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem sv_callers_valid : ∀ e ∈ svCallers, e.Valid :=
  mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 206) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
/-- **The fold's table extended by `ssz_split_var_list` and `decode_bytes_list`.** -/
theorem svFold_sound {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (h26 : CTabSound σ X Types.guestC H ShardsJL.tab26) :
    CTabSound σ X Types.guestC H (chunkTab (svTab ++ ShardsJL.tab26) svCallers) :=
  chkChunk_sound hF svCallers _ sv_callers_ok sv_callers_valid
    (ctabSound_append (svTab_sound hF (ctab% h26)) h26)

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.svTab_sound
#print axioms InitECandidate.Solver.MemSafe.Rec.svFold_sound
