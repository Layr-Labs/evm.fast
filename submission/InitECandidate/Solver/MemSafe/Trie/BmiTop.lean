import InitECandidate.Solver.MemSafe.Trie.BmiLoop
import InitECandidate.Solver.MemSafe.Trie.CsrRoot

/-!
# `build_mpt_indexed`: the whole body at an activation

**`bmi_ghost`**: from the entry (`mark` unset, the slice array `ArrE`, allocator at the entry) every non-abortive end of the body
has the allocator monotone from the entry and changes only footprint cells (`TopQ`). The tail `heap_release(mark); return 0`
(`bmi_tail`) is raw: the release sets the heap pointer back to the entry's, which keeps it monotone, and keeps memory.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def kvA (A N OUT : BitVec 64) : List (MlS × ValueHOL 64) :=
  [(nm "slice_arr", .val (.word A)), (nm "n", .val (.word N)), (nm "out", .val (.word OUT))]

def Lloop (M MK A N OUT : BitVec 64) (m : LocalsH) : Prop :=
  ∃ I : BitVec 64, LV ((nm "i", ValueHOL.val (.word I)) :: kvB M MK A N OUT) m

theorem gp_topQ {a : Act σ} {X : Ctx 64} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    ∀ (r : Option (PanSemResultExact 64)) (t : State σ), InCtx t X → r ≠ none → Good r → GP a L E Rv r t →
      TopQ a r t := by
  intro r t _ _ _ h r' hr hna
  obtain ⟨-, hX⟩ := h.2 r' hr
  obtain ⟨Γ, q, -, hh, -⟩ := hX hna
  exact topE_of_heap hh

/-- `heap_release(mark); return 0`. -/
theorem bmi_tail {a : Act σ} (ha : ActOK a guestCtx) {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {MK : BitVec 64} (hMK : MK.toNat = a.p0.hp)
    (hL : ∀ m, L m → m.lookup (nm "mark") = some (.val (.word MK))) :
    HoareG σ guestCtx (GI a L E) bmiTail (TopQ a) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have key : ∀ (s st : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → st.memory = s.memory →
      st.globals.lookup gHeap = some (.val (.word MK)) →
      (∀ g', g' ≠ gHeap → st.globals.lookup g' = s.globals.lookup g') → TopE a st := by
    intro s st Γ q hh hm hw ho
    have h0 := ha.hord0
    have h1 := heap_ord hh
    have hmo := hh.2.2.1
    unfold Ptrs.Ordered at h0 h1
    unfold Ptrs.Mono at hmo
    refine ⟨AllocImpl.setP q .heap MK.toNat, AllocImpl.ptrsOf_set hh.2.1 .heap hw ho, ?_, ?_,
      by rw [hm]; exact hh.2.2.2.2.2.1⟩
    · unfold Ptrs.Ordered
      simp only [AllocImpl.setP]
      refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> omega
    · unfold Ptrs.Mono
      simp only [AllocImpl.setP]
      refine ⟨?_, ?_, ?_⟩ <;> omega
  have hev : ∀ s : State σ, L s.locals → evs s [lv (nm "mark")] = some [.val (.word MK)] :=
    fun s h => evs_cons (Mpt.Leaves.ev_lv' (hL _ h)) evs_nil
  unfold bmiTail
  refine hoareG_seq (R := fun r t => (r = none → TopE a t) ∧ TopQ a r t) ?_ (fun r t _ _ _ h => h.2) ?_
  · refine hoareG_callD (releaseSpec_heap_release hX) ?_ ?_
    · rintro s hs ⟨hLs, Γ, q, he, hh, hsc, -⟩ vs hvs callee v st hR hst
      rw [hev s hLs] at hvs
      cases hvs
      obtain ⟨hm, hw, ho⟩ := hR (by simp [Good]) MK rfl
      exact ⟨fun _ => key s { st with locals := s.locals } Γ q hh hm hw ho, fun r' h => by cases h⟩
    · rintro s hs ⟨hLs, Γ, q, he, hh, hsc, -⟩ vs hvs callee r st hR hst habn
      rw [hev s hLs] at hvs
      cases hvs
      obtain ⟨hm, hw, ho⟩ := hR (abn_good' habn) MK rfl
      exact ⟨fun h => (by cases h), fun r' _ _ => key s (emptyLocalsHOLFinite st) Γ q hh hm hw ho⟩
  · refine hoareG_return fun s hs h v hv => ?_
    intro r' hr' _
    cases hr'
    exact topE_congr rfl rfl (h.1 rfl)

/-- `mpt_root(m, out); heap_release(mark); return 0` after the loop. -/
theorem bmi_rest {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) {M MK A N OUT : BitVec 64} (hMK : MK.toNat = a.p0.hp)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x) :
    HoareG σ guestCtx (GI a (Lloop M MK A N OUT) (EL a A N M)) (.seq bmiRoot bmiTail) (TopQ a) := by
  refine hoareG_seq (R := GP a (Lloop M MK A N OUT) (fun _ _ _ => True) (fun _ _ _ _ => True)) ?_ gp_topQ ?_
  · unfold bmiRoot
    refine gp_callX ha (cs := []) (capSub_nil _) (sa_mpt_root hCb haH) (funSpec_true _)
      (by simp [mrSig]) (fun h => by simp [mrSig] at h) ?_ ?_
    · intro s Γ q hs ⟨I, hL⟩ hh hE vs hvs
      have hev : evs s [lv (nm "m"), lv (nm "out")] = some [.val (.word M), .val (.word OUT)] :=
        evs_cons (lv_ev hL (by simp [kvB])) (evs_cons (lv_ev hL (by simp [kvB])) evs_nil)
      rw [hev] at hvs
      cases hvs
      exact ⟨argsOK_ab (hOutB s Γ q hh), fun x hx => hOutF x (argCells_ab hx),
        fun callee => ⟨M, OUT, rfl, mrecF_of_hRec hh.2.1 hE.1.1⟩⟩
    · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
      exact ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun _ => trivial⟩
  · exact hoareG_pre (bmi_tail ha hMK (L := Lloop M MK A N OUT) fun m ⟨I, h⟩ => h (nm "mark", ValueHOL.val (.word MK)) (by simp [kvB]))
      fun s _ h => h.1 rfl

/-- `var i = 0; while ...; mpt_root ...; heap_release ...; return 0`. -/
theorem bmi_k3 {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) (hcI : capSub insCaps a.caps = true)
    {M MK A N OUT : BitVec 64} (hMK : MK.toNat = a.p0.hp)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x) :
    HoareG σ guestCtx (GI a (LV (kvB M MK A N OUT)) (EL a A N M)) bmiK3 (TopQ a) := by
  unfold bmiK3
  refine gq_dec ha.hH (L1 := Lloop M MK A N OUT) (fun r t l h => topQ_loc l h) (fun s _ hL v hv => ?_) ?_
  · rw [ev_cw] at hv
    cases hv
    exact ⟨_, lv_new hL (kvB_fresh (Or.inl rfl)) _⟩
  · refine hoareG_seq (R := GP a (Lloop M MK A N OUT) (EL a A N M) (fun _ _ _ _ => True))
      (bmi_loop ha haC hCb haH hgr hcI) gp_topQ ?_
    exact hoareG_pre (bmi_rest ha haC hCb haH hMK hOutB hOutF) fun s _ h => h.1 rfl

theorem kvA_fresh {A N OUT : BitVec 64} {x : MlS} (hx : x = nm "m" ∨ x = nm "mark") :
    ∀ p ∈ kvA A N OUT, p.1 ≠ x := by
  intro p hp
  simp only [kvA, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hx with rfl | rfl <;> rcases hp with rfl | rfl | rfl <;> (dsimp only; decide)

/-- `var m = mpt_new(0, 0); ...` -/
theorem bmi_k2 {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) (hcI : capSub insCaps a.caps = true)
    {MK A N OUT : BitVec 64} (hMK : MK.toNat = a.p0.hp)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x) :
    HoareG σ guestCtx (GI a (LV ((nm "mark", ValueHOL.val (.word MK)) :: kvA A N OUT))
      (fun Γ _ mm => ArrE a.p0 a.s0.memory A N Γ mm)) bmiK2 (TopQ a) := by
  have hMN : SumSpecA σ guestCtx a.Cb a.H (nm "mpt_new") mnwSig MnwPre (fun _ s Γ x => CapPW [] s Γ x)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ M : BitVec 64, v = .val (.word M) ∧ HRecU p0 Γ' p' t.memory M) := by
    rw [hCb, haH]
    exact sumSpecA_mono sumSpecA_mpt_new (fun _ _ _ h => h) (fun _ _ _ _ h => h.elim) (fun _ _ _ _ _ _ h => h)
  have hev : ∀ s : State σ, evs s [cw 0, cw 0] = some [.val (.word (BitVec.ofNat 64 0)), .val (.word (BitVec.ofNat 64 0))] :=
    fun s => evs_cons (ev_cw s 0) (evs_cons (ev_cw s 0) evs_nil)
  have hnoc : ∀ (vs : List (ValueHOL 64)) (x : BitVec 64), ¬ ArgCells mnwSig.params vs x := by
    intro vs x hx
    obtain ⟨i, w, -, h⟩ := hx
    rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, y, hj, -⟩
    · rcases i with _ | _ | i <;> simp [mnwSig] at hn
    · rcases i with _ | _ | i <;> simp [mnwSig] at hj
  unfold bmiK2
  refine gq_decCallX ha (cs := []) (capSub_nil _) hMN (funSpec_true _) (by simp [mnwSig])
    (fun h => by simp [mnwSig] at h)
    (L1 := fun v m => LV ((nm "m", v) :: (nm "mark", ValueHOL.val (.word MK)) :: kvA A N OUT) m)
    (E1 := fun v Γ q mm => ArrE a.p0 a.s0.memory A N Γ mm ∧ ∃ M : BitVec 64, v = .val (.word M) ∧
      HRecU a.p0 Γ q mm M)
    (fun r t l h => topQ_loc l h) (fun r' t h => topQ_some h) ?_ ?_ ?_ ?_
  · intro s Γ q hs hL hh hE vs hvs
    rw [hev s] at hvs
    cases hvs
    refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun x hx => (hnoc _ x hx).elim,
      fun callee => ⟨_, _, rfl, Or.inl (by unfold nullMax; decide)⟩⟩
    rcases i with _ | _ | i <;> simp [mnwSig] at hpt <;> subst hpt <;> trivial
  · intro s st vs callee v Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    rw [hev s] at hvs
    cases hvs
    have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q := (AllocImpl.ptrsOf_congr rfl).trans hh.2.1
    refine ⟨hQ.1, fun _ => ⟨arrE_step hCb hmd hext hnf hh.2.2.1 hmo (heap_ord hh) (heap_ord hh')
      (layout_of_heap haC hh) hE fun c _ _ hc => (hnoc _ c hc).elim, ?_⟩⟩
    obtain ⟨M, hv, hR⟩ := hQ.2 v rfl q q' hq0 hh'.2.1
    exact ⟨M, hv, hR.1, fun c hc hA => hR.2 c hc (alloc_mono hh.2.2.1 hA)⟩
  · intro s st v hL hsh
    exact lv_new (s := { st with locals := s.locals }) hL (by
      intro p hp
      rcases List.mem_cons.mp hp with rfl | hp
      · dsimp only; decide
      · exact kvA_fresh (Or.inl rfl) p hp) v
  · intro v s hs ⟨hL, Γ, q, he, hh, hsc, hA, M, hv, hR⟩ hg
    subst hv
    exact bmi_k3 ha haC hCb haH hgr hcI hMK hOutB hOutF s hs ⟨hL, Γ, q, he, hh, hsc, ⟨hR, hA⟩⟩ hg

/-- **The body.** -/
theorem bmi_ghost {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) (hcI : capSub insCaps a.caps = true)
    {A N OUT : BitVec 64}
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x) :
    HoareG σ guestCtx (GI a (LV (kvA A N OUT)) (fun Γ q mm => ArrE a.p0 a.s0.memory A N Γ mm ∧ q = a.p0))
      bmiBody (TopQ a) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hHM : SumSpecA σ guestCtx a.Cb a.H (nm "heap_mark") ⟨[], [], [], false⟩ (fun _ s Γ => ReqOK [] s Γ)
      (fun _ s Γ x => CapPW [] s Γ x) (fun _ _ _ _ _ _ => True) := by
    have h' : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "heap_mark") ⟨[], [], [], false⟩ [] :=
      ctab% Rec.tab26_guestR
    rw [hCb, haH]; exact h'
  have hnoc : ∀ (x : BitVec 64), ¬ ArgCells ([] : List PT) [] x := by
    intro x hx
    obtain ⟨i, w, hw, -⟩ := hx
    simp [argW] at hw
  have hp0 : (BitVec.ofNat 64 a.p0.hp).toNat = a.p0.hp := by
    have := ha.hord0.2.1
    have he : heapEnd < 2 ^ 64 := by decide
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  unfold bmiBody
  refine gq_decCallX ha (cs := []) (capSub_nil _) hHM (markSpec'_heap_mark hX) (by simp) (fun h => by simp at h)
    (L1 := fun v m => LV ((nm "mark", v) :: kvA A N OUT) m)
    (E1 := fun v Γ q mm => ArrE a.p0 a.s0.memory A N Γ mm ∧ v = .val (.word (BitVec.ofNat 64 a.p0.hp)))
    (fun r t l h => topQ_loc l h) (fun r' t h => topQ_some h) ?_ ?_ ?_ ?_
  · intro s Γ q hs hL hh hE vs hvs
    rw [evs_nil] at hvs
    cases hvs
    exact ⟨⟨rfl, fun i pt v hpt _ => by simp at hpt⟩, fun x hx => (hnoc x hx).elim, fun callee c hc => by simp at hc⟩
  · intro s st vs callee v Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    rw [evs_nil] at hvs
    cases hvs
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun _ => ⟨arrE_step hCb hmd hext hnf hh.2.2.1 hmo
      (heap_ord hh) (heap_ord hh') (layout_of_heap haC hh) hE.1 fun c _ _ hc => (hnoc c hc).elim, ?_⟩⟩
    obtain ⟨-, -, hval⟩ := hLc (by simp [Good]) rfl
    have hl := hval v rfl
    obtain ⟨h0, f0, c0, hH0, -, -, hq⟩ := AllocImpl.ptrsOf_some hh.2.1
    rw [mark_val_word (s := s) hl hH0]
    have e1 : a.p0.hp = h0.toNat := by rw [← hE.2, hq]
    have e2 : BitVec.ofNat 64 a.p0.hp = h0 := by
      apply BitVec.eq_of_toNat_eq
      rw [BitVec.toNat_ofNat, e1, Nat.mod_eq_of_lt h0.isLt]
    rw [e2]
  · intro s st v hL hsh
    exact lv_new (s := { st with locals := s.locals }) hL (kvA_fresh (Or.inr rfl)) v
  · intro v s hs ⟨hL, Γ, q, he, hh, hsc, hA, hv⟩ hg
    subst hv
    exact bmi_k2 ha haC hCb haH hgr hcI hp0 hOutB hOutF s hs ⟨hL, Γ, q, he, hh, hsc, hA⟩ hg

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.bmi_ghost
