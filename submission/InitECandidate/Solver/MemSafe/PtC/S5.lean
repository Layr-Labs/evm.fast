import InitECandidate.Solver.MemSafe.PtC.S4

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

theorem cpt_c5a {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64}
    {ex0 : List (MlS × ValueHOL 64)} {fs rdl : List Fct} (hP : PtPre E) (hQT : LocIns QT)
    (C : CyB E En S rp rl buf n CV w ((nm "nal", .val (.word 0)) :: ex0) fs rdl) (hfr : nm "nal" ∉ ex0.map Prod.fst)
    (hk : ∀ nv : BitVec 64, NalOK E nv →
      CyB E (En.set (nm "nal") (.val (.word nv))) S rp rl buf n CV w ((nm "nal", .val (.word nv)) :: ex0) fs rdl →
      CW' (PA E (En.set (nm "nal") (.val (.word nv))) S) ptS49 (cbd ptS49) QT) :
    CW' (PA E En S) ptS47 (cbd ptS47) QT := by
  obtain ⟨C0, hex, hfx, hrd⟩ := C
  have hnal : En (nm "nal") = some (.val (.word 0)) := ex_get hex (List.mem_cons_self ..)
  have hex0 : EX En ex0 := fun p hp => hex p (List.mem_cons_of_mem _ hp)
  unfold ptS47
  refine cw_decAnyU (locIns_resIns hQT _) tab_tx_has_access_list (by simp) rfl txhal_fin rfl
    (fun g ty h => (C0.gl g ty h).1) (C0.un _ (by decide)) ?_
  unfold ptS48
  refine cw_seqN (P1 := fun t => ∃ nv, NalOK E nv ∧ PA E (En.set (nm "nal") (.val (.word nv))) S t) ?_ ?_
  · unfold ptS50
    refine hn_ite ?_ ?_
    · refine hn_post (hn_pre (hassignT (n := nm "nal") (w' := cnt0 E) ⟨_, hnal⟩ ?_) (fun s _ h => h.1))
        (fun t _ h => ⟨cnt0 E, Or.inr rfl, h⟩)
      intro s hpa v hv
      obtain ⟨D, Γ, p, hr, hD, hL⟩ := hpa.1
      have h1 := evI_ld (evI_add (evI_lv (hpa.2 _ _ C0.tx)) (evI_cw s 216)) v hv
      rw [h1, rd_tx hP hr hD (by norm_num) (by norm_num)]
      rfl
    · refine hn_post (hn_pre hn_skip (fun s _ h => h.1)) (fun t _ h => ⟨0, Or.inl rfl, ?_⟩)
      rw [env_set_same hnal]; exact h
  · refine cw_exC fun nv hnv => ?_
    exact hk nv hnv ⟨cy_set C0 (x := nm "nal") (by decide) (by decide) _, ex_cons hex0 hfr _, hfx, hrd⟩

theorem cpt_c5b {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64}
    {ex0 : List (MlS × ValueHOL 64)} {fs : List Fct} {wt nv : BitVec 64}
    (hP : PtPreX E) (hQT : LocIns QT)
    (C : CyB E En S rp rl buf n CV w ((nm "nal", .val (.word nv)) :: ex0) fs (TeRd wt w))
    (hnv : NalOK E nv) (hfbt : Fct.fbuf wt 200 ∈ fs) (hppt : Fct.prop (BlkP wt 200) ∈ fs)
    (hfr1 : nm "al_addrs" ∉ ((nm "nal", (.val (.word nv) : ValueHOL 64)) :: ex0).map Prod.fst)
    (hfr2 : nm "nkeys" ∉ ((nm "nal", (.val (.word nv) : ValueHOL 64)) :: ex0).map Prod.fst)
    (hfr3 : nm "i" ∉ ((nm "nal", (.val (.word nv) : ValueHOL 64)) :: ex0).map Prod.fst)
    (hk : ∀ (En2 : Env) (S2 : FS) (wa : BitVec 64),
      CyB E En2 S2 rp rl buf n CV w
        ((nm "i", .val (.word 0)) :: (nm "nkeys", .val (.word 0)) :: (nm "al_addrs", .val (.word wa)) ::
          (nm "nal", .val (.word nv)) :: ex0)
        (Fct.arrbuf wa ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat 1 20 ::
          Fct.arrbuf wa ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat 0 20 ::
          Fct.bufok0 (rd E.s0.memory (E.be + BitVec.ofNat 64 32)) 20 ::
          Fct.prop (wt.toNat + 200 ≤ wa.toNat) :: Fct.prop (BlkP wa ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat) ::
          Fct.fbuf wa ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat :: fs)
        (Fct.arrbuf wa ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat 1 20 :: TeRd wt w) →
      CW' (PA E En2 S2) ptS54 (cbd ptS54) QT) :
    CW' (PA E En S) ptS49 (cbd ptS49) QT := by
  obtain ⟨C0, hex, hfx, hrd⟩ := C
  have hnal : En (nm "nal") = some (.val (.word nv)) := ex_get hex (List.mem_cons_self ..)
  have hbound := nalOK_lt hP.toPtPre hnv
  have hnn := nal_n hbound
  unfold ptS49
  refine cw_decAllocF2 (n := (nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8) (locIns_resIns hQT _)
    (fun s hpa => evI_mul (evI_add (evI_lv (hpa.2 _ _ hnal)) (evI_cw s 1)) (evI_cw s 8))
    (fun g ty h => (C0.gl g ty h).1) (by rw [hnn]; omega) [(wt, 200)] ?_ ?_
  · intro b hb
    simp only [List.mem_singleton] at hb
    subst hb
    exact ⟨fxs_get hfx hfbt, fxs_get hfx hppt, by norm_num, by norm_num⟩
  intro wa
  have C1 := cy_setF C0 (x := nm "al_addrs") (by decide) (by decide) (.val (.word wa))
    [Fct.fbuf wa ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat,
      Fct.prop (BlkP wa ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat),
      Fct.prop (wt.toNat + 200 ≤ wa.toNat)]
    (by intro X hX; simp at hX; rcases hX with rfl | rfl | rfl <;> simp)
  have hex1 := ex_cons hex (x := nm "al_addrs") hfr1 (.val (.word wa))
  have hfx1 := fxs_addF hfx [Fct.fbuf wa ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat,
      Fct.prop (BlkP wa ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat),
      Fct.prop (wt.toNat + 200 ≤ wa.toNat)]
  have hrd1 := rdin_nr hrd (L := [Fct.fbuf wa ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat,
      Fct.prop (BlkP wa ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat),
      Fct.prop (wt.toNat + 200 ≤ wa.toNat)]) (by intro X hX; simp at hX; rcases hX with rfl | rfl | rfl <;> simp [Fct.reads])
  set nbl : Nat := ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat with hnbl
  have hwa_lookup : (En.set (nm "al_addrs") (.val (.word wa))) (nm "al_addrs") = some (.val (.word wa)) :=
    env_set_self _ _ _
  unfold ptS51
  refine cw_ghostF (Fct.arrbuf wa nbl 0 20)
    (fun s hpa D Γ p hr hL => arr0_holds hL (fxs_get hfx1 (by simp))) ?_
  refine cw_ghostF (Fct.bufok0 (rd E.s0.memory (E.be + BitVec.ofNat 64 32)) 20)
    (fun s hpa D Γ p hr hL => bufok0_pre hP.toPtPre hr hP.beCoin) ?_
  have hfx2 := fxs_addF (fxs_addF hfx1 [Fct.arrbuf wa nbl 0 20])
    [Fct.bufok0 (rd E.s0.memory (E.be + BitVec.ofNat 64 32)) 20]
  have hrd2 := rdin_nr (rdin_nr hrd1 (L := [Fct.arrbuf wa nbl 0 20]) (by simp [Fct.reads]))
    (L := [Fct.bufok0 (rd E.s0.memory (E.be + BitVec.ofNat 64 32)) 20]) (by simp [Fct.reads])
  have C2 := cy_addF (cy_addF C1 [Fct.arrbuf wa nbl 0 20] (by simp)) [Fct.bufok0 (rd E.s0.memory (E.be + BitVec.ofNat 64 32)) 20] (by simp)
  refine cw_seqN (hn_stArr (c := 0) (n := 20) (nblk := nbl) (xv := rd E.s0.memory (E.be + BitVec.ofNat 64 32))
    (fxs_get hfx2 (f := Fct.arrbuf wa nbl 0 20) (by simp)) (fxs_get hfx2 (f := Fct.fbuf wa nbl) (by simp))
    (fxs_get hfx2 (f := Fct.prop (BlkP wa nbl)) (by simp))
    (fxs_get hfx2 (f := Fct.bufok0 (rd E.s0.memory (E.be + BitVec.ofNat 64 32)) 20) (by simp))
    ?_ ?_ (by omega) hrd2 ?_) ?_
  · intro s hpa v hv
    have := evI_lv (hpa.2 _ _ hwa_lookup) v hv
    rw [this]; simp
  · intro s hpa v hv
    obtain ⟨D, Γ, p, hr, hD, hL⟩ := hpa.1
    have h1 := evI_ld (evI_add (evI_gv (be_lookup hP.toPtPre hr)) (evI_cw s 32)) v hv
    rw [h1, rd_be hP hr hD (by norm_num) (by norm_num)]
  · intro s hpa f hf y hy
    exact terd_ne_wa (S := addF (addF (addF S [Fct.fbuf wa nbl, Fct.prop (BlkP wa nbl), Fct.prop (wt.toNat + 200 ≤ wa.toNat)])
        [Fct.arrbuf wa nbl 0 20]) [Fct.bufok0 (rd E.s0.memory (E.be + BitVec.ofNat 64 32)) 20])
      (fxs_get hfx2 (f := Fct.prop (wt.toNat + 200 ≤ wa.toNat)) (by simp))
      (Or.inl (Or.inl (Or.inl (fxs_get hfx (f := Fct.prop (BlkP wt 200)) hppt))))
      (fxs_get hfx2 (f := Fct.prop (BlkP wa nbl)) (by simp)) s hpa f hf y hy 0 (by omega)
  have C3 := cy_addF C2 [Fct.arrbuf wa nbl 1 20] (by simp)
  have hfx3 := fxs_addF hfx2 [Fct.arrbuf wa nbl 1 20]
  have hrd3 := rdin_cons hrd2 (Fct.arrbuf wa nbl 1 20)
  unfold ptS52
  refine cw_decT (w := 0) (locIns_resIns hQT _) (fun s _ => evI_cw s 0) ?_
  unfold ptS53
  refine cw_decT (w := 0) (locIns_resIns hQT _) (fun s _ => evI_cw s 0) ?_
  have hfr2' : nm "nkeys" ∉ ((nm "al_addrs", (.val (.word wa) : ValueHOL 64)) :: (nm "nal", (.val (.word nv) : ValueHOL 64)) :: ex0).map Prod.fst := by
    intro hm; simp only [List.map_cons, List.mem_cons] at hm hfr2
    rcases hm with h | h
    · exact absurd h (by decide)
    · exact hfr2 h
  have hex2 := ex_cons hex1 (x := nm "nkeys") hfr2' (.val (.word 0))
  have hfr3' : nm "i" ∉ ((nm "nkeys", (.val (.word 0) : ValueHOL 64)) :: (nm "al_addrs", (.val (.word wa) : ValueHOL 64)) :: (nm "nal", (.val (.word nv) : ValueHOL 64)) :: ex0).map Prod.fst := by
    intro hm; simp only [List.map_cons, List.mem_cons] at hm hfr3
    rcases hm with h | h | h
    · exact absurd h (by decide)
    · exact absurd h (by decide)
    · exact hfr3 h
  have hex3 := ex_cons hex2 (x := nm "i") hfr3' (.val (.word 0))
  exact hk _ _ wa ⟨cy_set (cy_set C3 (x := nm "nkeys") (by decide) (by decide) _) (x := nm "i") (by decide) (by decide) _,
    hex3, fun f hf => hfx3 f (by simp at hf ⊢; tauto), hrd3⟩

end InitECandidate.Solver.MemSafe.PtC
