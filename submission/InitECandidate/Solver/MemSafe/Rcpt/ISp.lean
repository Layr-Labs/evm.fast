import InitECandidate.Solver.MemSafe.Rcpt.Main1

set_option autoImplicit false

/-!
# The three RLP writers as `ISp (RI a Fl)` specs
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

theorem heapEnd_scratch : heapEnd ≤ scratchEnd := by decide

/-- A cell `a` overlapping `[D, D + len)` with `p.hp ≤ D`, `D + len ≤ heapEnd`. -/
theorem ovl_range {p : Ptrs} (hord : p.Ordered) {D len : Nat} {x : BitVec 64}
    (h : Overlap D len x) (h1 : p.hp ≤ D) (h2 : D + len ≤ heapEnd) :
    p.hp ≤ x.toNat ∧ x.toNat < heapEnd := by
  unfold Overlap at h
  unfold Ptrs.Ordered at hord
  omega

def WordPre (a : AwE σ) (vs : List (ValueHOL 64)) : Prop :=
  ∃ D W : BitVec 64, argW vs 0 = some D ∧ argW vs 1 = some W ∧ a.p0.hp ≤ D.toNat ∧
    D.toNat + wordLen W.toNat ≤ heapEnd

theorem isp_word {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (Fl : Nat) :
    ISp (RI a Fl) X (nm "rlp_encode_word") (fun vs _ => WordPre a vs) (fun vs v _ => WRet vs v) := by
  refine isp_footRet hK (footRet_rlp_encode_word hC hA) ?_ ?_
  · rintro vs x ⟨D, W, hD, hW, h1, h2⟩ ⟨D', W', hD', hW', hov⟩
    rw [hD] at hD'; rw [hW] at hW'
    cases hD'; cases hW'
    exact ovl_range hK.hord hov h1 h2
  · rintro vs ⟨D, W, hD, hW, h1, h2⟩
    refine ⟨D, hD, fun W' hW' => ?_⟩
    rw [hW] at hW'; cases hW'
    have := heapEnd_scratch
    omega

def BytesPre (a : AwE σ) (vs : List (ValueHOL 64)) : Prop :=
  ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 2 = some N ∧ a.p0.hp ≤ D.toNat ∧
    D.toNat + hdrLen N.toNat + N.toNat ≤ heapEnd

theorem isp_bytes {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (Fl : Nat) :
    ISp (RI a Fl) X (nm "rlp_encode_bytes") (fun vs _ => BytesPre a vs) (fun vs v _ => EncRet vs v) := by
  refine isp_footRet hK (footRet_rlp_encode_bytes hC hA) ?_ ?_
  · rintro vs x ⟨D, N, hD, hN, h1, h2⟩ ⟨D', N', hD', hN', hov⟩
    rw [hD] at hD'; rw [hN] at hN'
    cases hD'; cases hN'
    exact ovl_range hK.hord hov h1 (by omega)
  · rintro vs ⟨D, N, hD, hN, h1, h2⟩
    have := heapEnd_scratch
    exact ⟨D, N, hD, hN, by omega⟩

def FinPre (a : AwE σ) (vs : List (ValueHOL 64)) : Prop :=
  ∃ D PE : BitVec 64, argW vs 0 = some D ∧ argW vs 1 = some PE ∧ a.p0.hp ≤ D.toNat ∧
    D.toNat + 9 ≤ PE.toNat ∧ PE.toNat ≤ heapEnd

theorem isp_fin {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (Fl : Nat) :
    ISp (RI a Fl) X (nm "rlp_finish_list") (fun vs _ => FinPre a vs) (fun vs v _ => FinRetX vs v) := by
  refine isp_footRet hK (footRet_finish_listX hC hA) ?_ ?_
  · rintro vs x ⟨D, PE, hD, hP, h1, h2, h3⟩ ⟨D', P', hD', hP', hov⟩
    rw [hD] at hD'; rw [hP] at hP'
    cases hD'; cases hP'
    have hh := hdrLen_le (n := PE.toNat - (D.toNat + 9)) (by have := PE.isLt; omega)
    exact ovl_range hK.hord hov h1 (by omega)
  · rintro vs ⟨D, PE, hD, hP, h1, h2, h3⟩
    have := heapEnd_scratch
    exact ⟨D, PE, hD, hP, h2, by omega⟩

end InitECandidate.Solver.MemSafe.Rcpt
