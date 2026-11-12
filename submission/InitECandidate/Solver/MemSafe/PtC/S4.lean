import InitECandidate.Solver.MemSafe.PtC.S3

/-!
# PtC: stages 1 to 3
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

theorem cpt_c4a {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64}
    {ex : List (MlS × ValueHOL 64)} {fs : List Fct} (hQT : LocIns QT) (C : CyB E En S rp rl buf n CV w ex fs [])
    (hfr : nm "te" ∉ ex.map Prod.fst)
    (hk : ∀ (En' : Env) (S' : FS) (wt : BitVec 64),
      CyB E En' S' rp rl buf n CV w ((nm "te", .val (.word wt)) :: ex)
        (Fct.memw (wt + BitVec.ofNat 64 152) 0 :: Fct.memw (wt + BitVec.ofNat 64 144) 0 ::
          Fct.prop (BlkP wt 200) :: Fct.fbuf wt 200 :: fs)
        [Fct.memw (wt + BitVec.ofNat 64 144) 0, Fct.memw (wt + BitVec.ofNat 64 152) 0] →
      CW' (PA E En' S') ptS39 (cbd ptS39) QT) :
    CW' (PA E En S) ptS38 (cbd ptS38) QT := by
  obtain ⟨C0, hex, hfx, hrd0⟩ := C
  unfold ptS38
  refine cw_decNew (locIns_resIns hQT _) tn_spec tn_fin (by norm_num) (by norm_num) (by norm_num) [144, 152]
    (by intro o ho; simp at ho; rcases ho with rfl | rfl <;> norm_num)
    (fun g ty h => (C0.gl g ty h).1) ?_
  intro wt
  have C1 := cy_setF C0 (x := nm "te") (by decide) (by decide) (.val (.word wt))
    [Fct.fbuf wt 200, Fct.prop (BlkP wt 200), Fct.memw (wt + BitVec.ofNat 64 144) 0,
      Fct.memw (wt + BitVec.ofNat 64 152) 0]
    (by intro X hX; simp at hX; rcases hX with rfl | rfl | rfl | rfl <;> simp)
  have hex1 := ex_cons hex (x := nm "te") hfr (.val (.word wt))
  have hfx1 : FXs (addF S [Fct.fbuf wt 200, Fct.prop (BlkP wt 200), Fct.memw (wt + BitVec.ofNat 64 144) 0,
      Fct.memw (wt + BitVec.ofNat 64 152) 0])
      (Fct.memw (wt + BitVec.ofNat 64 152) 0 :: Fct.memw (wt + BitVec.ofNat 64 144) 0 ::
        Fct.prop (BlkP wt 200) :: Fct.fbuf wt 200 :: fs) := by
    intro f hf
    rcases List.mem_cons.mp hf with rfl | hf
    · exact Or.inr (by simp)
    rcases List.mem_cons.mp hf with rfl | hf
    · exact Or.inr (by simp)
    rcases List.mem_cons.mp hf with rfl | hf
    · exact Or.inr (by simp)
    rcases List.mem_cons.mp hf with rfl | hf
    · exact Or.inr (by simp)
    · exact Or.inl (hfx f hf)
  exact hk _ _ wt ⟨C1, hex1, hfx1, rdin_addF2 hrd0 _ (fun f hf => absurd hf (by simp)) (by
    intro X hX; simp at hX
    rcases hX with rfl | rfl | rfl | rfl
    · exact Or.inl (by simp [Fct.reads])
    · exact Or.inl (by simp [Fct.reads])
    · exact Or.inr (by simp)
    · exact Or.inr (by simp))⟩

theorem cpt_c4b {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64}
    {ex : List (MlS × ValueHOL 64)} {fs : List Fct} {wt mg rs : BitVec 64} {pr : List (BitVec 64)}
    (hQT : LocIns QT)
    (C : CyB E En S rp rl buf n CV w ex fs [Fct.memw (wt + BitVec.ofNat 64 144) 0, Fct.memw (wt + BitVec.ofNat 64 152) 0])
    (hte : (nm "te", .val (.word wt)) ∈ ex) (hfb : Fct.fbuf wt 200 ∈ fs) (hpp : Fct.prop (BlkP wt 200) ∈ fs)
    (hpr : (nm "price", wv pr) ∈ ex) (hpl : pr.length = 4) (hmg : (nm "mgas", .val (.word mg)) ∈ ex)
    (hrs : (nm "reservoir", .val (.word rs)) ∈ ex)
    (hfr : nm "nal" ∉ ex.map Prod.fst)
    (hk : CyB E (En.set (nm "nal") (.val (.word 0))) (addF S [Fct.memw (wt + BitVec.ofNat 64 0) w]) rp rl buf n CV w
        ((nm "nal", .val (.word 0)) :: ex) (Fct.memw (wt + BitVec.ofNat 64 0) w :: fs) (TeRd wt w) →
      CW' (PA E (En.set (nm "nal") (.val (.word 0))) (addF S [Fct.memw (wt + BitVec.ofNat 64 0) w])) ptS47 (cbd ptS47) QT) :
    CW' (PA E En S) ptS39 (cbd ptS39) QT := by
  obtain ⟨C0, hex, hfx, hrd⟩ := C
  have hte' := ex_get hex hte
  have hpr' := ex_get hex hpr
  have hmg' := ex_get hex hmg
  have hrs' := ex_get hex hrs
  unfold ptS39
  refine cw_seqN (hn_stTeM (N := 200) (off := 0) hte' (fxs_get hfx hfb) (fxs_get hfx hpp)
    (fun s hpa => evI_lv (hpa.2 _ _ C0.sd)) (by norm_num) (by norm_num) hrd (by
      intro f hf y hy
      rcases List.mem_cons.mp hf with rfl | hf
      · simp only [Fct.reads] at hy; subst hy; exact bv_off_ne (by norm_num) (by norm_num) (by norm_num)
      · rw [List.mem_singleton] at hf; subst hf
        simp only [Fct.reads] at hy; subst hy; exact bv_off_ne (by norm_num) (by norm_num) (by norm_num))) ?_
  have C1 := cy_addF C0 [Fct.memw (wt + BitVec.ofNat 64 0) w] (memw_nonc _ _)
  have hfx1 : FXs (addF S [Fct.memw (wt + BitVec.ofNat 64 0) w]) (Fct.memw (wt + BitVec.ofNat 64 0) w :: fs) := by
    intro f hf
    rcases List.mem_cons.mp hf with rfl | hf
    · exact Or.inr (by simp)
    · exact Or.inl (hfx f hf)
  have hrd1 : RdIn (addF S [Fct.memw (wt + BitVec.ofNat 64 0) w]) (TeRd wt w) := rdin_cons hrd (Fct.memw (wt + BitVec.ofNat 64 0) w)
  have hfb1 : addF S [Fct.memw (wt + BitVec.ofNat 64 0) w] (Fct.fbuf wt 200) := Or.inl (fxs_get hfx hfb)
  have hpp1 : addF S [Fct.memw (wt + BitVec.ofNat 64 0) w] (Fct.prop (BlkP wt 200)) := Or.inl (fxs_get hfx hpp)
  unfold ptS40
  refine cw_seqN (hn_stTe (N := 200) (off := 8) (k := 1) hte' hfb1 hpp1
    (fun s hpa v hv => len_ld1 hv) (by norm_num) (by norm_num) hrd1 ?_) ?_
  · exact terd_ne_te (by norm_num) (by norm_num)
  unfold ptS41
  refine cw_seqN (P1 := PA E En (addF S [Fct.memw (wt + BitVec.ofNat 64 0) w])) ?_ ?_
  · unfold ptS43
    refine hn_stTe (N := 200) (off := 16) (k := 4) hte' hfb1 hpp1
      (fun s hpa v hv => len_ld4 hv) (by norm_num) (by norm_num) hrd1 ?_
    exact terd_ne_te (by norm_num) (by norm_num)
  unfold ptS42
  refine cw_seqN (hn_stTe (N := 200) (off := 48) (k := 4) hte' hfb1 hpp1 (hlen_lv_wv hpr' hpl) (by norm_num)
    (by norm_num) hrd1 ?_) ?_
  · exact terd_ne_te (by norm_num) (by norm_num)
  unfold ptS44
  refine cw_seqN (hn_stTe (N := 200) (off := 80) (k := 1) hte' hfb1 hpp1 (hlen_lv_w hmg') (by norm_num)
    (by norm_num) hrd1 ?_) ?_
  · exact terd_ne_te (by norm_num) (by norm_num)
  unfold ptS45
  refine cw_seqN (hn_stTe (N := 200) (off := 88) (k := 1) hte' hfb1 hpp1 (hlen_lv_w hrs') (by norm_num)
    (by norm_num) hrd1 ?_) ?_
  · exact terd_ne_te (by norm_num) (by norm_num)
  unfold ptS46
  refine cw_decT (w := 0) (locIns_resIns hQT _) (fun s _ => evI_cw s 0) ?_
  exact hk ⟨cy_set C1 (x := nm "nal") (by decide) (by decide) _, ex_cons hex hfr _,
    fxs_mono hfx1 (fun f h => h), hrd1⟩

end InitECandidate.Solver.MemSafe.PtC
