import InitECandidate.Solver.Band7.CsrInner
import InitECandidate.Solver.Improvements.StorageDeleteStage

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Trie
open InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}


/-- The cheap price is used only for the concrete storage deletion with two literal zero arguments. -/
def debitCall (f : MlS) : List (ExpHOL 64) → Nat
  | [.var .local m, .rfield _ _, .const _, .const p, .const v] =>
      if f = nm "mpt_set" ∧ m = nm "mpt" ∧ p = 0 ∧ v = 0 then msDeleteB else tb f
  | _ => tb f

def debitCost : ProgHOL 64 → Nat
  | .decCall _ _ f _ k => 1 + tb f + debitCost k
  | .call _ f args => 1 + debitCall f args + 0
  | .dec _ _ _ k => debitCost k
  | .seq a b => debitCost a + debitCost b
  | .ite _ a b => max (debitCost a) (debitCost b)
  | other => cb other

set_option maxHeartbeats 0 in
theorem cstage_z_delete {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {kv : List (MlS × ValueHOL 64)} {C NR SW AW ND M VB x0 x1 x2 x3 e0 e1 e2 : BitVec 64}
    (hv : (nm "v", wv [x0, x1, x2, x3]) ∈ kv) (hvb : (nm "vbuf", .val (.word VB)) ∈ kv)
    (hmpt : (nm "mpt", .val (.word M)) ∈ kv) (he : (nm "e", wv [e0, e1, e2]) ∈ kv)
    (hfr : ∀ p ∈ kv, p.1 ≠ nm "z" ∧ p.1 ≠ nm "n" ∧ p.1 ≠ nm "w" ∧ p.1 ≠ nm "enc")
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV kv) (IA a K C NR SW AW ND M VB)) csr_z_1
      (GP a (LV kv) (IA a K C NR SW AW ND M VB) Rv) (debitCost csr_z_1) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  unfold csr_z_1
  refine gc_decCallT ha (cs := []) (capSub_nil _) (sa_cast hCb haH zero_R) (funSpec_true _)
    (by simp) (fun h => by simp at h)
    (L1 := fun vz m => LV ((nm "z", vz) :: kv) m) (E1 := fun _ => IA a K C NR SW AW ND M VB)
    (L2 := fun m => ∃ vz, LV ((nm "z", vz) :: kv) m) (E2 := IA a K C NR SW AW ND M VB) ?_ ?_ ?_ ?_
    (fun m0 m _ ⟨vz, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp)) (fun p hp => (hfr p hp).1) _)
  · intro s Γ q hs hL hh hE vs hvs
    have hev : evs s [lv (nm "v")] = some [wv [x0, x1, x2, x3]] := evs_cons (lv_ev hL hv) evs_nil
    rw [hev] at hvs
    cases hvs
    exact ⟨(anyArgsG (by simp) rfl hev).1, fun x hx => (argCells_nb (by decide) hx).elim, fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he' hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun v hv' hsh => ?_⟩
    exact ia_nb haC hCb hK (by decide) (by intro c hc; simp at hc) hmd hext hnf hmo hh hh' hE
  · intro s st vz hL hsh
    exact lv_cons (lv_set hL (fun p hp => (hfr p hp).1) vz) (by simp [setVarHOLFinite, FUPDATE])
  · intro vz
    let kv' : List (MlS × ValueHOL 64) := (nm "z", vz) :: kv
    have hfr' : ∀ p ∈ kv', p.1 ≠ nm "n" ∧ p.1 ≠ nm "w" ∧ p.1 ≠ nm "enc" := by
      intro p hp
      rcases List.mem_cons.mp hp with rfl | hp
      · exact ⟨by dsimp only; decide, by dsimp only; decide, by dsimp only; decide⟩
      · exact ⟨(hfr p hp).2.1, (hfr p hp).2.2.1, (hfr p hp).2.2.2⟩
    have hv' : (nm "v", wv [x0, x1, x2, x3]) ∈ kv' := List.mem_cons_of_mem _ hv
    have hvb' : (nm "vbuf", ValueHOL.val (.word VB)) ∈ kv' := List.mem_cons_of_mem _ hvb
    have hmpt' : (nm "mpt", ValueHOL.val (.word M)) ∈ kv' := List.mem_cons_of_mem _ hmpt
    have he' : (nm "e", wv [e0, e1, e2]) ∈ kv' := List.mem_cons_of_mem _ he
    refine ch_weakL (L := LV kv') (fun m hm => ⟨vz, hm⟩) (gc_seq (L := LV kv')
      (E := IA a K C NR SW AW ND M VB) ?_ ?_)
    · refine gc_ite ?_ ?_
      · exact ch_pre (cstage_write ha haC hCb haH hgr hcI hK hv' hvb' hmpt' he' hfr') (fun s _ h => h.1)
      · exact gc_skip (fun s h => h.1)
    · refine gc_ite ?_ ?_
      · refine ch_pre (P := GI a (LV kv') (IA a K C NR SW AW ND M VB)) ?_ (fun s _ h => h.1)
        have hev : ∀ s : State σ, LV kv' s.locals → evs s
              [lv (nm "mpt"), .rfield 1 (lv (nm "e")), cw 32, cw 0, cw 0] =
            some [.val (.word M), .val (.word e1), .val (.word (BitVec.ofNat 64 32)), .val (.word 0), .val (.word 0)] := by
          intro s hL
          exact evs_cons (lv_ev hL hmpt') (evs_cons (ev_rfield_wv (x := lv (nm "e")) (ws := [e0, e1, e2])
            (by rw [ev_lv]; exact lv_ev hL he') (i := 1) (by simp))
            (evs_cons (ev_cw s 32) (evs_cons (ev_cw s 0) (evs_cons (ev_cw s 0) evs_nil))))
        exact ⟨(cmps_ia ha haC hCb haH hgr hcI hK hev (by decide) (by decide)
            (fun Γ q mm _ => Or.inl rfl) (Rv := Rv)).1,
          (cstage_delete 0 ha haC hCb haH hgr hcI hK (k := e1) (kl := BitVec.ofNat 64 32)
              (C := C) (NR := NR) (SW := SW) (AW := AW) (ND := ND) (M := M) (VB := VB)
              (Rv := Rv) hev (by decide)).2.pre (fun s _ ⟨ll, Γ, q, h, hh, hsc, hIA⟩ =>
                ⟨ll, Γ, q, h, hh, hsc, hIA, Nat.zero_le _⟩)⟩
      · exact gc_skip (fun s h => h.1)


set_option maxHeartbeats 0 in
theorem cstage_v_delete {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {kv : List (MlS × ValueHOL 64)} {C NR SW AW ND M VB e0 e1 e2 : BitVec 64}
    (hvb : (nm "vbuf", .val (.word VB)) ∈ kv)
    (hmpt : (nm "mpt", .val (.word M)) ∈ kv) (he : (nm "e", wv [e0, e1, e2]) ∈ kv)
    (hfr : ∀ p ∈ kv, p.1 ≠ nm "v" ∧ p.1 ≠ nm "z" ∧ p.1 ≠ nm "n" ∧ p.1 ≠ nm "w" ∧ p.1 ≠ nm "enc")
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV kv) (IA a K C NR SW AW ND M VB)) csr_v_1
      (GP a (LV kv) (IA a K C NR SW AW ND M VB) Rv) (debitCost csr_v_1) := by
  unfold csr_v_1
  refine gc_dec ha.hH (L1 := fun m => ∃ x0 x1 x2 x3 : BitVec 64,
      LV ((nm "v", wv [x0, x1, x2, x3]) :: kv) m) (L2 := fun m => ∃ x0 x1 x2 x3 : BitVec 64,
      LV ((nm "v", wv [x0, x1, x2, x3]) :: kv) m) ?_ ?_
    (fun m0 m _ ⟨x0, x1, x2, x3, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => (hfr p hp).1) _)
  · intro s hs hL v hv
    have ha2 : ev s (.rfield 2 (lv (nm "e"))) = some (.val (.word e2)) :=
      ev_rfield_wv (x := lv (nm "e")) (ws := [e0, e1, e2]) (by rw [ev_lv]; exact lv_ev hL he) (i := 2) (by simp)
    obtain ⟨y0, y1, y2, y3, hy⟩ : ∃ y0 y1 y2 y3 : BitVec 64, v = wv [y0, y1, y2, y3] :=
      ⟨_, _, _, _, ev_ld4 ha2 hv⟩
    subst hy
    exact ⟨y0, y1, y2, y3, lv_cons (lv_set hL (fun p hp => (hfr p hp).1) _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · refine ch_exL fun x0 => ch_exL fun x1 => ch_exL fun x2 => ch_exL fun x3 => ?_
    let kv' : List (MlS × ValueHOL 64) := (nm "v", wv [x0, x1, x2, x3]) :: kv
    have hfr' : ∀ p ∈ kv', p.1 ≠ nm "z" ∧ p.1 ≠ nm "n" ∧ p.1 ≠ nm "w" ∧ p.1 ≠ nm "enc" := by
      intro p hp
      rcases List.mem_cons.mp hp with rfl | hp
      · exact ⟨by dsimp only; decide, by dsimp only; decide, by dsimp only; decide, by dsimp only; decide⟩
      · exact (hfr p hp).2
    refine ch_weakL (L := LV kv') (fun m hm => ⟨x0, x1, x2, x3, hm⟩) ?_
    exact cstage_z_delete ha haC hCb haH hgr hcI hK (List.mem_cons_self ..) (List.mem_cons_of_mem _ hvb)
      (List.mem_cons_of_mem _ hmpt) (List.mem_cons_of_mem _ he) hfr'


set_option maxHeartbeats 0 in
theorem cstage_e_delete {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {kv : List (MlS × ValueHOL 64)} {C NR SW AW ND M VB INN : BitVec 64}
    (hinn : (nm "inner", .val (.word INN)) ∈ kv)
    (hvb : (nm "vbuf", .val (.word VB)) ∈ kv) (hmpt : (nm "mpt", .val (.word M)) ∈ kv)
    (hfr : ∀ p ∈ kv, p.1 ≠ nm "j" ∧ p.1 ≠ nm "e" ∧ p.1 ≠ nm "v" ∧ p.1 ≠ nm "z" ∧ p.1 ≠ nm "n" ∧
      p.1 ≠ nm "w" ∧ p.1 ≠ nm "enc")
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (fun m => ∃ J : BitVec 64, LV ((nm "j", .val (.word J)) :: kv) m)
        (IA a K C NR SW AW ND M VB)) csr_e_1
      (GP a (fun m => ∃ J : BitVec 64, LV ((nm "j", .val (.word J)) :: kv) m) (IA a K C NR SW AW ND M VB) Rv) (debitCost csr_e_1) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  refine ch_exL fun J => ?_
  let kvj : List (MlS × ValueHOL 64) := (nm "j", .val (.word J)) :: kv
  have hfrj : ∀ p ∈ kvj, p.1 ≠ nm "e" ∧ p.1 ≠ nm "v" ∧ p.1 ≠ nm "z" ∧ p.1 ≠ nm "n" ∧ p.1 ≠ nm "w" ∧
      p.1 ≠ nm "enc" := by
    intro p hp
    rcases List.mem_cons.mp hp with rfl | hp
    · exact ⟨by dsimp only; decide, by dsimp only; decide, by dsimp only; decide, by dsimp only; decide,
        by dsimp only; decide, by dsimp only; decide⟩
    · exact (hfr p hp).2
  have hinnj : (nm "inner", ValueHOL.val (.word INN)) ∈ kvj := List.mem_cons_of_mem _ hinn
  have hvbj : (nm "vbuf", ValueHOL.val (.word VB)) ∈ kvj := List.mem_cons_of_mem _ hvb
  have hmptj : (nm "mpt", ValueHOL.val (.word M)) ∈ kvj := List.mem_cons_of_mem _ hmpt
  have hjj : (nm "j", ValueHOL.val (.word J)) ∈ kvj := List.mem_cons_self ..
  unfold csr_e_1
  have hevj : ∀ s : State σ, LV kvj s.locals →
      evs s [lv (nm "inner"), lv (nm "j")] = some [.val (.word INN), .val (.word J)] := fun s hL =>
    evs_cons (lv_ev hL hinnj) (evs_cons (lv_ev hL hjj) evs_nil)
  refine gc_decCallT ha (cs := []) (capSub_nil _) (sa_cast hCb haH item_R) (funSpec_true _)
    (by simp) (fun h => by simp at h)
    (L1 := fun ve m => LV ((nm "e", ve) :: kvj) m ∧ ∃ x y z : BitVec 64, ve = wv [x, y, z])
    (E1 := fun _ => IA a K C NR SW AW ND M VB)
    (L2 := fun m => ∃ x y z J' : BitVec 64,
      LV ((nm "e", wv [x, y, z]) :: (nm "j", .val (.word J')) :: kv) m)
    (E2 := IA a K C NR SW AW ND M VB) ?_ ?_ ?_ ?_
    (fun m0 m _ ⟨x, y, z, J', h⟩ => ⟨J', lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => by
        rcases List.mem_cons.mp hp with rfl | hp
        · dsimp only; decide
        · exact (hfr p hp).2.1) _⟩)
  · intro s Γ q hs hL hh hE vs hvs
    have hev := hevj s hL
    rw [hev] at hvs
    cases hvs
    exact ⟨(anyArgsG (by simp) rfl hev).1, fun x hx => (argCells_nb (by decide) hx).elim, fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he' hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun v hv' hsh => ?_⟩
    exact ia_nb haC hCb hK (by decide) (by intro c hc; simp at hc) hmd hext hnf hmo hh hh' hE
  · intro s st ve hL hsh
    obtain ⟨x, y, z, rfl⟩ := wv3_of_shape hsh
    exact ⟨lv_cons (lv_set hL (fun p hp => (hfrj p hp).1) _) (by simp [setVarHOLFinite, FUPDATE]), x, y, z, rfl⟩
  · intro ve
    by_cases hve : ∃ x y z : BitVec 64, ve = wv [x, y, z]
    swap
    · exact ch_false fun s _ h => hve h.1.2
    obtain ⟨x, y, z, rfl⟩ := hve
    let kve : List (MlS × ValueHOL 64) := (nm "e", wv [x, y, z]) :: kvj
    have hfre : ∀ p ∈ kve, p.1 ≠ nm "v" ∧ p.1 ≠ nm "z" ∧ p.1 ≠ nm "n" ∧ p.1 ≠ nm "w" ∧ p.1 ≠ nm "enc" := by
      intro p hp
      rcases List.mem_cons.mp hp with rfl | hp
      · exact ⟨by dsimp only; decide, by dsimp only; decide, by dsimp only; decide, by dsimp only; decide,
          by dsimp only; decide⟩
      · exact (hfrj p hp).2
    refine ch_pre (P := GI a (LV kve) (IA a K C NR SW AW ND M VB)) ?_
      (fun s _ ⟨⟨hL, _⟩, rest⟩ => ⟨hL, rest⟩)
    refine ch_weakL (L := fun m => ∃ x y z J' : BitVec 64,
      LV ((nm "e", wv [x, y, z]) :: (nm "j", .val (.word J')) :: kv) m) (fun m hm => hm) ?_
    refine gc_seq (L := LV kve) (E := IA a K C NR SW AW ND M VB) ?_ ?_
    · refine gc_ite ?_ (gc_skip (fun s h => h.1))
      exact ch_pre (cstage_v_delete ha haC hCb haH hgr hcI hK (List.mem_cons_of_mem _ hvbj)
        (List.mem_cons_of_mem _ hmptj) (List.mem_cons_self ..) hfre) (fun s _ h => h.1)
    · refine gc_assign ha.hH ?_
      intro s hs hL v hv
      rw [ev_add2 (lv_ev hL (List.mem_cons_of_mem _ hjj)) (ev_cw s 1)] at hv
      cases hv
      have hL0 : LV kv s.locals := lv_mono hL (fun p hp => List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hp))
      have h1 := lv_set hL0 (fun p hp => (hfr p hp).1) (.val (.word (J + BitVec.ofNat 64 1)))
      refine ⟨x, y, z, J + BitVec.ofNat 64 1, lv_cons (lv_cons h1 (by simp [setVarHOLFinite, FUPDATE])) ?_⟩
      exact lk_keep (x := nm "j") (y := nm "e") (by decide)
        (hL _ (List.mem_cons_self ..))



end InitECandidate.Solver.MemSafe.Trie
#print axioms InitECandidate.Solver.MemSafe.Trie.cstage_e_delete
