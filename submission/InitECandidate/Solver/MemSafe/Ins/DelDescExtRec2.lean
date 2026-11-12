import InitECandidate.Solver.MemSafe.Ins.DelDescExtRec

set_option autoImplicit false

/-!
# Descent, extension case: the record fill (`dlExtRec`)
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

theorem dlExtRec_G {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (ha : ActOK (aD vs s0 Γ0 p0) guestCtx)
    (hsp0 : p0.sp ≤ scratchEnd)
    {K KL Nd Lv Res T K0 SEG SL PL R : BitVec 64} (hK0 : K0 = 2)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (aD vs s0 Γ0 p0) (LKV (kvX K KL Nd Lv Res 0 T K0 SEG SL PL R))
        (fun Γ q M => EX (aD vs s0 Γ0 p0) K KL Nd Lv Res T K0 SEG SL R [] Γ q M))
      dlExtRec (GPJ (aD vs s0 Γ0 p0) (JD (aD vs s0 Γ0 p0) K KL) Rv) := by
  set a := aD vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hse : scratchEnd < 2 ^ 64 := by decide
  have hhi : a.p0.sp < 2 ^ 64 := by have : a.p0.sp = p0.sp := rfl; omega
  have hfr : (nm "fr", R) ∈ kvX K KL Nd Lv Res 0 T K0 SEG SL PL R := by simp [kvX]
  unfold dlExtRec
  -- the five stores
  refine gp_seqJ (L := LKV (kvX K KL Nd Lv Res 0 T K0 SEG SL PL R))
    (E := fun Γ q M => EX a K KL Nd Lv Res T K0 SEG SL R [(0, T)] Γ q M)
    (gp_stRec ha (V := T) (k := 0) (by omega) rfl hhi (by simp) (by simp) hfr
      (fun s hL => ev_lw (hL (nm "top", T) (by simp [kvX, kvD])))) ?_
  refine gp_seqJ (L := LKV (kvX K KL Nd Lv Res 0 T K0 SEG SL PL R))
    (E := fun Γ q M => EX a K KL Nd Lv Res T K0 SEG SL R [(8, Nd), (0, T)] Γ q M)
    (gp_stRec ha (V := Nd) (k := 8) (by omega) rfl hhi (by simp) (by simp) hfr
      (fun s hL => ev_lw (hL (nm "node", Nd) (by simp [kvX, kvD])))) ?_
  refine gp_seqJ (L := LKV (kvX K KL Nd Lv Res 0 T K0 SEG SL PL R))
    (E := fun Γ q M => EX a K KL Nd Lv Res T K0 SEG SL R
      [(16, BitVec.ofNat 64 2), (8, Nd), (0, T)] Γ q M)
    (gp_stRec ha (V := BitVec.ofNat 64 2) (k := 16) (by omega) rfl hhi (by simp) (by simp) hfr
      (fun s hL => ev_cw s 2)) ?_
  refine gp_seqJ (L := LKV (kvX K KL Nd Lv Res 0 T K0 SEG SL PL R))
    (E := fun Γ q M => EX a K KL Nd Lv Res T K0 SEG SL R
      [(24, SEG), (16, BitVec.ofNat 64 2), (8, Nd), (0, T)] Γ q M)
    (gp_stRec ha (V := SEG) (k := 24) (by omega) rfl hhi (by simp) (by simp) hfr
      (fun s hL => ev_lw (hL (nm "seg", SEG) (by simp [kvX])))) ?_
  refine gp_seqJ (L := LKV (kvX K KL Nd Lv Res 0 T K0 SEG SL PL R))
    (E := fun Γ q M => EX a K KL Nd Lv Res T K0 SEG SL R
      [(32, SL), (24, SEG), (16, BitVec.ofNat 64 2), (8, Nd), (0, T)] Γ q M)
    (gp_stRec ha (V := SL) (k := 32) (by omega) rfl hhi (by simp) (by simp) hfr
      (fun s hL => ev_lw (hL (nm "sl", SL) (by simp [kvX])))) ?_
  -- `top = fr`
  refine gp_seqJ (L := LKV (kvX K KL Nd Lv Res 0 R K0 SEG SL PL R))
    (E := fun Γ q M => EX a K KL Nd Lv Res T K0 SEG SL R
      [(32, SL), (24, SEG), (16, BitVec.ofNat 64 2), (8, Nd), (0, T)] Γ q M) ?_ ?_
  · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
    have e : v = .val (.word R) := Option.some.inj (hv.symm.trans (ev_lw (hL _ hfr)))
    subst e
    exact lkv_upd_gen hL (by simp [kvX, kvD]) (by lkv_rest [kvX, kvD])
  -- `node = lds (node + 48)`
  have hnodeR : (nm "node", Nd) ∈ kvX K KL Nd Lv Res 0 R K0 SEG SL PL R := by simp [kvX, kvD]
  refine gpj_seq (Inv1 := fun t => ∃ W3 : BitVec 64, GI a (LKV (kvX K KL W3 Lv Res 0 R K0 SEG SL PL R))
    (fun Γ q M => EX a K KL Nd Lv Res T K0 SEG SL R
      [(32, SL), (24, SEG), (16, BitVec.ofNat 64 2), (8, Nd), (0, T)] Γ q M ∧
        Fits Γ Types.nodeU W3) t) ?_ ?_
  · refine gpj_mono (gp_assignAV
      (L1 := fun (v : ValueHOL 64) m => ∃ W3 : BitVec 64, v = .val (.word W3) ∧
        LKV (kvX K KL W3 Lv Res 0 R K0 SEG SL PL R) m)
      (E1 := fun (v : ValueHOL 64) Γ q M => EX a K KL Nd Lv Res T K0 SEG SL R
        [(32, SL), (24, SEG), (16, BitVec.ofNat 64 2), (8, Nd), (0, T)] Γ q M ∧
          ∃ W3 : BitVec 64, v = .val (.word W3) ∧ Fits Γ Types.nodeU W3)
      ha.hH (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh hE v hv => ?_)) ?_
    · have hv' := Spec.Mpt.Dec.ev_ld (hL (nm "node", Nd) hnodeR) 48 v hv
      subst hv'
      exact ⟨_, rfl, lkv_upd_gen hL (by simp [kvX, kvD]) (by lkv_rest [kvX, kvD])⟩
    · have hv' := Spec.Mpt.Dec.ev_ld (hL (nm "node", Nd) hnodeR) 48 v hv
      exact ⟨hE, _, hv', (ext_facts hh.1 (ndT_next hE.1.1.2.2.2.2.1 hK0)).2⟩
    · rintro t ⟨v, ⟨W3, rfl, hlk⟩, Γ, q, he, hh, hsc, hE, W3', hW', hf⟩
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW'
      subst hW'
      exact ⟨W3, hlk, Γ, q, he, hh, hsc, hE, hf⟩
  refine hoareG_ex fun W3 => ?_
  -- `level = level + sl`, `go = 1`
  have hlevN : (nm "level", Lv) ∈ kvX K KL W3 Lv Res 0 R K0 SEG SL PL R := by simp [kvX, kvD]
  have hslN : (nm "sl", SL) ∈ kvX K KL W3 Lv Res 0 R K0 SEG SL PL R := by simp [kvX]
  refine gp_seqJ (L := LKV (kvX K KL W3 (Lv + SL) Res 0 R K0 SEG SL PL R))
    (E := fun Γ q M => EX a K KL Nd Lv Res T K0 SEG SL R
      [(32, SL), (24, SEG), (16, BitVec.ofNat 64 2), (8, Nd), (0, T)] Γ q M ∧
        Fits Γ Types.nodeU W3) ?_ ?_
  · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
    have e : v = .val (.word (Lv + SL)) :=
      Option.some.inj (hv.symm.trans (ev_add2 (ev_lw (hL _ hlevN)) (ev_lw (hL _ hslN))))
    subst e
    exact lkv_upd_gen hL (by simp [kvX, kvD]) (by lkv_rest [kvX, kvD])
  refine gpj_of_gp (gp_assign ha.hH (L' := LKV (kvX K KL W3 (Lv + SL) Res 1 R K0 SEG SL PL R))
    (fun s hs hL v hv => ?_)) (fun t h => ?_)
  · have e : v = .val (.word 1) := by
      rw [ev_cw] at hv; exact (Option.some.inj hv).symm
    subst e
    exact lkv_upd_gen hL (by simp [kvX, kvD]) (by lkv_rest [kvX, kvD])
  · exact jd_ext_close hK0 (by kv_sub [kvX, kvD]) h

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.dlExtRec_G
