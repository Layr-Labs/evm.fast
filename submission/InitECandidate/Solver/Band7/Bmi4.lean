import InitECandidate.Solver.Band7.Bmi3

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false
set_option cbv.warning false

/-!
# `build_mpt_indexed`: the cost of the body at the ghost activation (Band7)
-/

namespace InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}

/-- `var m = mpt_new(0, 0); ...` -/
theorem c_k2 {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) (hcI : capSub insCaps a.caps = true)
    {MK A N OUT : BitVec 64}
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32) :
    Inv.CostP σ guestCtx (GI a (Trie.LV ((nm "mark", ValueHOL.val (.word MK)) :: kvA A N OUT))
      (fun Γ _ mm => ArrE a.p0 a.s0.memory A N Γ mm)) bmiK2 bK2 := by
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
  unfold bmiK2 bK2
  refine cq_decCallX ha (cs := []) (capSub_nil _) hMN (funSpec_true _) (by simp [mnwSig])
    (fun h => by simp [mnwSig] at h)
    (L1 := fun v m => Trie.LV ((nm "m", v) :: (nm "mark", ValueHOL.val (.word MK)) :: kvA A N OUT) m)
    (E1 := fun v Γ q mm => ArrE a.p0 a.s0.memory A N Γ mm ∧ ∃ M : BitVec 64, v = .val (.word M) ∧
      HRecU a.p0 Γ q mm M)
    (PreC := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_mpt_new) (fun _ _ _ _ _ _ => trivial)
    ?_ ?_ ?_ ?_
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
    refine ⟨hQ.1, fun _ => ⟨arrE_step hCb hmd hext hnf hh.2.2.1 hmo (MemSafe.heap_ord hh) (MemSafe.heap_ord hh')
      (layout_of_heap haC hh) hE fun c _ _ hc => (hnoc _ c hc).elim, ?_⟩⟩
    obtain ⟨M, hv, hR⟩ := hQ.2 v rfl q q' hq0 hh'.2.1
    exact ⟨M, hv, hR.1, fun c hc hA => hR.2 c hc (Trie.alloc_mono hh.2.2.1 hA)⟩
  · intro s st v hL hsh
    exact lv_new (s := { st with locals := s.locals }) hL (by
      intro p hp
      rcases List.mem_cons.mp hp with rfl | hp
      · dsimp only; decide
      · exact kvA_fresh (Or.inl rfl) p hp) v
  · intro v s hs ⟨hL, Γ, q, he, hh, hsc, hA, M, hv, hR⟩ hg
    subst hv
    exact c_k3 ha haC hCb haH hgr hcI hOutB s hs ⟨hL, Γ, q, he, hh, hsc, ⟨hR, hA⟩⟩ hg

/-- **The body at the ghost activation.** -/
theorem c_top {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) (hcI : capSub insCaps a.caps = true)
    {A N OUT : BitVec 64}
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32) :
    Inv.CostP σ guestCtx (GI a (Trie.LV (kvA A N OUT)) (fun Γ q mm => ArrE a.p0 a.s0.memory A N Γ mm ∧ q = a.p0))
      bmiBody bTop := by
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
  unfold bmiBody bTop
  refine cq_decCallX ha (cs := []) (capSub_nil _) hHM (markSpec'_heap_mark hX) (by simp) (fun h => by simp at h)
    (L1 := fun v m => Trie.LV ((nm "mark", v) :: kvA A N OUT) m)
    (E1 := fun v Γ q mm => ArrE a.p0 a.s0.memory A N Γ mm ∧ v = .val (.word (BitVec.ofNat 64 a.p0.hp)))
    (PreC := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_heap_mark) (fun _ _ _ _ _ _ => trivial)
    ?_ ?_ ?_ ?_
  · intro s Γ q hs hL hh hE vs hvs
    rw [evs_nil] at hvs
    cases hvs
    exact ⟨⟨rfl, fun i pt v hpt _ => by simp at hpt⟩, fun x hx => (hnoc x hx).elim, fun callee c hc => by simp at hc⟩
  · intro s st vs callee v Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    rw [evs_nil] at hvs
    cases hvs
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun _ => ⟨arrE_step hCb hmd hext hnf hh.2.2.1 hmo
      (MemSafe.heap_ord hh) (MemSafe.heap_ord hh') (layout_of_heap haC hh) hE.1 fun c _ _ hc => (hnoc c hc).elim, ?_⟩⟩
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
    exact c_k2 ha haC hCb haH hgr hcI hOutB s hs ⟨hL, Γ, q, he, hh, hsc, hA⟩ hg

end InitECandidate.Solver.Band7

#print axioms InitECandidate.Solver.Band7.c_top
