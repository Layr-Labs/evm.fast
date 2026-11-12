import InitECandidate.Solver.MemSafe.Ins.DelDescExt

set_option autoImplicit false

/-!
# Descent, branch case: the record and the step (`dlBrRec`)

After `fr2 = scratch_alloc(40)`: fill the record (`prev = top`, `node`, kind `3`, `idx`), then
`top = fr2; node = lds (node + 32 + 8 * idx); level = level + 1; go = 1`.
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

/-- The `Γ`-only facts of the branch step. -/
def XB (K KL Nd Lv Res IX K0 : BitVec 64) (Γ : Gam) : Prop :=
  Fits Γ Types.nodeU Nd ∧ Lv.toNat < KL.toNat ∧ NIn Γ K KL ∧ Rt Γ Res ∧ NdT Γ Nd K0 ∧
    IX.toNat < 16

theorem xb_ext {K KL Nd Lv Res IX K0 : BitVec 64} {Γ Γ' : Gam} (he : Ext Γ Γ')
    (h : XB K KL Nd Lv Res IX K0 Γ) : XB K KL Nd Lv Res IX K0 Γ' :=
  ⟨fits_ext he h.1, h.2.1, nIn_ext he h.2.2.1, rt_ext he h.2.2.2.1, ndT_ext he h.2.2.2.2.1,
    h.2.2.2.2.2⟩

/-- Locals at the branch record fill. -/
def kvB (K KL Nd Lv Res G T K0 IX R : BitVec 64) : List (MlS × BitVec 64) :=
  (nm "fr2", R) :: (nm "idx", IX) :: (nm "k", K0) :: kvD K KL Nd Lv Res G T

def EB (a : Act σ) (K KL Nd Lv Res T K0 IX R : BitVec 64) (l : List (Nat × BitVec 64))
    (Γ : Gam) (q : Ptrs) (M : Mem) : Prop :=
  (XB K KL Nd Lv Res IX K0 Γ ∧ q.sp ≤ R.toNat ∧ R.toNat + 40 ≤ a.p0.sp) ∧ FrD a R Γ q ∧
    DlG a Γ q M (R.toNat + 40) a.p0.sp T ∧ RFl R M l

theorem jd_br_close {a : Act σ} {K KL Nd Lv Res T K0 IX R W3 : BitVec 64}
    (hK0 : K0 = 3) {kv : List (MlS × BitVec 64)}
    (hk : ∀ p ∈ kvD K KL W3 (Lv + BitVec.ofNat 64 1) Res 1 R, p ∈ kv) {t : State σ}
    (h : GI a (LKV kv) (fun Γ q M => EB a K KL Nd Lv Res T K0 IX R
      [(32, IX), (16, BitVec.ofNat 64 3), (8, Nd), (0, T)] Γ q M ∧
        Fits Γ Types.nodeU W3) t) : JD a K KL t := by
  obtain ⟨hL, Γ, q, he, hh, hsc, ⟨⟨hXB, hqsp, hR40⟩, hF, hD, hRF⟩, hW3⟩ := h
  have hKL := KL.isLt
  have hLv' : (Lv + BitVec.ofNat 64 1).toNat ≤ KL.toNat := by
    have h1 : (BitVec.ofNat 64 1).toNat = 1 := rfl
    have := hXB.2.1
    rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
    omega
  have h0 : rd t.memory R = T := by
    have := hRF (0, T) (by simp); simpa using this
  have h8 : rd t.memory (R + 8) = Nd := hRF (8, Nd) (by simp)
  have h16 : rd t.memory (R + 16) = 3 := hRF (16, BitVec.ofNat 64 3) (by simp)
  have h32 : rd t.memory (R + 32) = IX := hRF (32, IX) (by simp)
  refine ⟨1, W3, Lv + BitVec.ofNat 64 1, Res, R, fun p hp => hL p (hk p hp), Γ, q, he, hh, hsc, hW3,
    hLv', hXB.2.2.1, hXB.2.2.2.1, ?_⟩
  refine dl_cons hqsp hR40 hF (Or.inr ⟨h16, ?_, ?_⟩) (by rw [h0]; exact hD)
  · obtain ⟨o, ho, hb, ht⟩ := ndT_branch hXB.2.2.2.2.1 hK0
    exact ⟨o, ho, by rw [h8]; exact hb, ht⟩
  · rw [h32]; exact hXB.2.2.2.2.2

theorem dlBrRec_G {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (ha : ActOK (aD vs s0 Γ0 p0) guestCtx)
    (hsp0 : p0.sp ≤ scratchEnd)
    {K KL Nd Lv Res T K0 IX R : BitVec 64} (hK0 : K0 = 3)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (aD vs s0 Γ0 p0) (LKV (kvB K KL Nd Lv Res 0 T K0 IX R))
        (fun Γ q M => EB (aD vs s0 Γ0 p0) K KL Nd Lv Res T K0 IX R [] Γ q M))
      dlBrRec (GPJ (aD vs s0 Γ0 p0) (JD (aD vs s0 Γ0 p0) K KL) Rv) := by
  set a := aD vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hse : scratchEnd < 2 ^ 64 := by decide
  have hhi : a.p0.sp < 2 ^ 64 := by have : a.p0.sp = p0.sp := rfl; omega
  have hfr : (nm "fr2", R) ∈ kvB K KL Nd Lv Res 0 T K0 IX R := by simp [kvB]
  unfold dlBrRec
  refine gp_seqJ (L := LKV (kvB K KL Nd Lv Res 0 T K0 IX R))
    (E := fun Γ q M => EB a K KL Nd Lv Res T K0 IX R [(0, T)] Γ q M)
    (gp_stRec ha (V := T) (k := 0) (by omega) rfl hhi (by simp) (by simp) hfr
      (fun s hL => ev_lw (hL (nm "top", T) (by simp [kvB, kvD])))) ?_
  refine gp_seqJ (L := LKV (kvB K KL Nd Lv Res 0 T K0 IX R))
    (E := fun Γ q M => EB a K KL Nd Lv Res T K0 IX R [(8, Nd), (0, T)] Γ q M)
    (gp_stRec ha (V := Nd) (k := 8) (by omega) rfl hhi (by simp) (by simp) hfr
      (fun s hL => ev_lw (hL (nm "node", Nd) (by simp [kvB, kvD])))) ?_
  refine gp_seqJ (L := LKV (kvB K KL Nd Lv Res 0 T K0 IX R))
    (E := fun Γ q M => EB a K KL Nd Lv Res T K0 IX R
      [(16, BitVec.ofNat 64 3), (8, Nd), (0, T)] Γ q M)
    (gp_stRec ha (V := BitVec.ofNat 64 3) (k := 16) (by omega) rfl hhi (by simp) (by simp)
      hfr (fun s hL => ev_cw s 3)) ?_
  refine gp_seqJ (L := LKV (kvB K KL Nd Lv Res 0 T K0 IX R))
    (E := fun Γ q M => EB a K KL Nd Lv Res T K0 IX R
      [(32, IX), (16, BitVec.ofNat 64 3), (8, Nd), (0, T)] Γ q M)
    (gp_stRec ha (V := IX) (k := 32) (by omega) rfl hhi (by simp) (by simp) hfr
      (fun s hL => ev_lw (hL (nm "idx", IX) (by simp [kvB])))) ?_
  -- `top = fr2`
  refine gp_seqJ (L := LKV (kvB K KL Nd Lv Res 0 R K0 IX R))
    (E := fun Γ q M => EB a K KL Nd Lv Res T K0 IX R
      [(32, IX), (16, BitVec.ofNat 64 3), (8, Nd), (0, T)] Γ q M) ?_ ?_
  · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
    have e : v = .val (.word R) := Option.some.inj (hv.symm.trans (ev_lw (hL _ hfr)))
    subst e
    exact lkv_upd_gen hL (by simp [kvB, kvD]) (by lkv_rest [kvB, kvD])
  -- `node = lds (node + 32 + 8 * idx)`
  have hnodeR : (nm "node", Nd) ∈ kvB K KL Nd Lv Res 0 R K0 IX R := by simp [kvB, kvD]
  have hidxR : (nm "idx", IX) ∈ kvB K KL Nd Lv Res 0 R K0 IX R := by simp [kvB]
  refine gpj_seq (Inv1 := fun t => ∃ W3 : BitVec 64, GI a (LKV (kvB K KL W3 Lv Res 0 R K0 IX R))
    (fun Γ q M => EB a K KL Nd Lv Res T K0 IX R
      [(32, IX), (16, BitVec.ofNat 64 3), (8, Nd), (0, T)] Γ q M ∧
        Fits Γ Types.nodeU W3) t) ?_ ?_
  · refine gpj_mono (gp_assignAV
      (L1 := fun (v : ValueHOL 64) m => ∃ W3 : BitVec 64, v = .val (.word W3) ∧
        LKV (kvB K KL W3 Lv Res 0 R K0 IX R) m)
      (E1 := fun (v : ValueHOL 64) Γ q M => EB a K KL Nd Lv Res T K0 IX R
        [(32, IX), (16, BitVec.ofNat 64 3), (8, Nd), (0, T)] Γ q M ∧
          ∃ W3 : BitVec 64, v = .val (.word W3) ∧ Fits Γ Types.nodeU W3)
      ha.hH (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh hE v hv => ?_)) ?_
    · have hv' := MemSafe.HtabEntries.ev_ld (ev_childAddrI_eq (hL _ hnodeR) (hL _ hidxR)) hv
      subst hv'
      exact ⟨_, rfl, lkv_upd_gen hL (by simp [kvB, kvD]) (by lkv_rest [kvB, kvD])⟩
    · have hv' := MemSafe.HtabEntries.ev_ld (ev_childAddrI_eq (hL _ hnodeR) (hL _ hidxR)) hv
      have hXB := hE.1.1
      exact ⟨hE, _, hv', child_fits hh.1 (ndT_branch hXB.2.2.2.2.1 hK0) hXB.2.2.2.2.2⟩
    · rintro t ⟨v, ⟨W3, rfl, hlk⟩, Γ, q, he, hh, hsc, hE, W3', hW', hf⟩
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW'
      subst hW'
      exact ⟨W3, hlk, Γ, q, he, hh, hsc, hE, hf⟩
  refine hoareG_ex fun W3 => ?_
  have hlevN : (nm "level", Lv) ∈ kvB K KL W3 Lv Res 0 R K0 IX R := by simp [kvB, kvD]
  refine gp_seqJ (L := LKV (kvB K KL W3 (Lv + BitVec.ofNat 64 1) Res 0 R K0 IX R))
    (E := fun Γ q M => EB a K KL Nd Lv Res T K0 IX R
      [(32, IX), (16, BitVec.ofNat 64 3), (8, Nd), (0, T)] Γ q M ∧
        Fits Γ Types.nodeU W3) ?_ ?_
  · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
    have e : v = .val (.word (Lv + BitVec.ofNat 64 1)) :=
      Option.some.inj (hv.symm.trans (ev_add2 (ev_lw (hL _ hlevN)) (ev_cw s 1)))
    subst e
    exact lkv_upd_gen hL (by simp [kvB, kvD]) (by lkv_rest [kvB, kvD])
  refine gpj_of_gp (gp_assign ha.hH
    (L' := LKV (kvB K KL W3 (Lv + BitVec.ofNat 64 1) Res 1 R K0 IX R)) (fun s hs hL v hv => ?_))
    (fun t h => ?_)
  · have e : v = .val (.word 1) := by
      rw [ev_cw] at hv; exact (Option.some.inj hv).symm
    subst e
    exact lkv_upd_gen hL (by simp [kvB, kvD]) (by lkv_rest [kvB, kvD])
  · exact jd_br_close hK0 (by kv_sub [kvB, kvD]) h

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.dlBrRec_G
