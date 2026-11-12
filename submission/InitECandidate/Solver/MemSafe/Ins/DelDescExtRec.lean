import InitECandidate.Solver.MemSafe.Ins.DelStRec

set_option autoImplicit false

/-!
# Descent, extension case: the record and the step

After `fr = scratch_alloc(40)`: fill the record (`prev = top`, `node`, kind `2`, `seg`, `sl`), then
`top = fr; node = lds (node + 48); level = level + sl; go = 1`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

/-- The `Γ`-only facts of the extension step. -/
def XE (K KL Nd Lv Res SEG SL K0 : BitVec 64) (Γ : Gam) : Prop :=
  Fits Γ Types.nodeU Nd ∧ Lv.toNat ≤ KL.toNat ∧ NIn Γ K KL ∧ Rt Γ Res ∧ NdT Γ Nd K0 ∧
    NIn Γ SEG SL ∧ SL.toNat + Lv.toNat ≤ KL.toNat

theorem xe_ext {K KL Nd Lv Res SEG SL K0 : BitVec 64} {Γ Γ' : Gam} (he : Ext Γ Γ')
    (h : XE K KL Nd Lv Res SEG SL K0 Γ) : XE K KL Nd Lv Res SEG SL K0 Γ' :=
  ⟨fits_ext he h.1, h.2.1, nIn_ext he h.2.2.1, rt_ext he h.2.2.2.1, ndT_ext he h.2.2.2.2.1,
    nIn_ext he h.2.2.2.2.2.1, h.2.2.2.2.2.2⟩

/-- Locals at the record fill. -/
def kvX (K KL Nd Lv Res G T K0 SEG SL PL R : BitVec 64) : List (MlS × BitVec 64) :=
  (nm "fr", R) :: (nm "pl", PL) :: (nm "sl", SL) :: (nm "seg", SEG) :: (nm "k", K0) ::
    kvD K KL Nd Lv Res G T

/-- The memory facts at the record fill. -/
def EX (a : Act σ) (K KL Nd Lv Res T K0 SEG SL R : BitVec 64) (l : List (Nat × BitVec 64))
    (Γ : Gam) (q : Ptrs) (M : Mem) : Prop :=
  (XE K KL Nd Lv Res SEG SL K0 Γ ∧ q.sp ≤ R.toNat ∧ R.toNat + 40 ≤ a.p0.sp) ∧ FrD a R Γ q ∧
    DlG a Γ q M (R.toNat + 40) a.p0.sp T ∧ RFl R M l

/-- After the record fill and the four assignments, the state is a `JD` state. -/
theorem jd_ext_close {a : Act σ} {K KL Nd Lv Res T K0 SEG SL R W3 : BitVec 64}
    (hK0 : K0 = 2) {kv : List (MlS × BitVec 64)}
    (hk : ∀ p ∈ kvD K KL W3 (Lv + SL) Res 1 R, p ∈ kv) {t : State σ}
    (h : GI a (LKV kv) (fun Γ q M => EX a K KL Nd Lv Res T K0 SEG SL R
      [(32, SL), (24, SEG), (16, BitVec.ofNat 64 2), (8, Nd), (0, T)] Γ q M ∧
        Fits Γ Types.nodeU W3) t) : JD a K KL t := by
  obtain ⟨hL, Γ, q, he, hh, hsc, ⟨⟨hXE, hqsp, hR40⟩, hF, hD, hRF⟩, hW3⟩ := h
  have hKL := KL.isLt
  have hLv' : (Lv + SL).toNat ≤ KL.toNat := by
    rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by have := hXE.2.2.2.2.2.2; omega)]
    have := hXE.2.2.2.2.2.2; omega
  have h0 : rd t.memory R = T := by
    have := hRF (0, T) (by simp); simpa using this
  have h8 : rd t.memory (R + 8) = Nd := hRF (8, Nd) (by simp)
  have h16 : rd t.memory (R + 16) = 2 := hRF (16, BitVec.ofNat 64 2) (by simp)
  have h24 : rd t.memory (R + 24) = SEG := hRF (24, SEG) (by simp)
  have h32 : rd t.memory (R + 32) = SL := hRF (32, SL) (by simp)
  refine ⟨1, W3, Lv + SL, Res, R, fun p hp => hL p (hk p hp), Γ, q, he, hh, hsc, hW3, hLv',
    hXE.2.2.1, hXE.2.2.2.1, ?_⟩
  refine dl_cons hqsp hR40 hF (Or.inl ⟨h16, ?_, ?_⟩) (by rw [h0]; exact hD)
  · obtain ⟨o, ho, hb, ht⟩ := ndT_next hXE.2.2.2.2.1 hK0
    exact ⟨o, ho, by rw [h8]; exact hb, ht⟩
  · rw [h24, h32]; exact hXE.2.2.2.2.2.1

end InitECandidate.Solver.MemSafe.Ins
