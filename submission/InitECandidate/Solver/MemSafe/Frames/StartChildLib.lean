import InitECandidate.Solver.MemSafe.Frames.StartChildDefs

/-!
# Step lemmas for `start_child`
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem protCell_ext {C : Cfg} {Γ Γ1 : Gam} (hext : Ext Γ Γ1) {a : BitVec 64}
    (h : ProtCell C Γ a) : ProtCell C Γ1 a := by
  obtain ⟨o, ho, k, hk, hp, rfl⟩ := h
  obtain ⟨o1, ho1, hb, ht, hs⟩ := hext o ho
  refine ⟨o1, ho1, k, ?_, by rw [ht]; exact hp, by unfold Obj.cell; rw [hb]⟩
  unfold Obj.HasSlot at hk ⊢; omega

theorem protKeep_trans {C : Cfg} {Γ Γ1 : Gam} {s u t : State σ} (hext : Ext Γ Γ1)
    (h1 : ProtKeep C Γ s u) (h2 : ProtKeep C Γ1 u t) : ProtKeep C Γ s t :=
  fun a ha => (h2 a (protCell_ext hext ha)).trans (h1 a ha)

/-- A callee summary with no protected writes keeps the `prot` cells of its entry typing. -/
theorem protKeep_of_sumCore {C : Cfg} {H : Hooks σ} {sg : Sig} (hps : ∀ pt ∈ sg.params, pt = .any)
    {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    {p p' : Ptrs} (hG : G C H Γ s)
    (hc : SumCore C H sg (fun a => ProtCell C Γ a ∧ False) Γ s vs r t Γ' p p') :
    ProtKeep C Γ s t := by
  obtain ⟨q, hq, hord, hL, _⟩ := hG
  rw [hc.1, Option.some.injEq] at hq
  subst hq
  intro a ⟨o, ho, k, hk, hpr, he⟩
  subst he
  exact hc.2.2.2.2.2.2.1 _ (prot_not_foot hord hL hps ho hk hpr)

/-- The frames of a chain keep their cells when the `prot` cells of the typing are kept. -/
theorem framesKept_of_protKeep {C : Cfg} {H : Hooks σ} {tEV tCK : Nat}
    (hF : FrameCfg C H tEV tCK) {Γ : Gam} {s t : State σ} {fs : List Frame} {p : Ptrs}
    (hord : p.Ordered) (hL : Layout C p Γ) (hch : ChainL C tEV tCK Γ s fs)
    (hk : ProtKeep C Γ s t) : FramesKept fs s t := by
  intro f hf
  refine ⟨fun j hj => ?_, fun j hj => ?_⟩
  · obtain ⟨o, ho, hob, hot⟩ := ev_obj hch hf
    have hsz := ev_size hF hL ho hot
    have hj' : j ≤ 29 := by simp [evProtSlots] at hj; omega
    rw [← hob]
    have h := hk _ ⟨o, ho, j, by unfold Obj.HasSlot; omega, by rw [hot]; exact hF.evProt j hj, rfl⟩
    unfold Obj.cell at h
    unfold fld rd
    rw [h]
  · obtain ⟨o, ho, hob, hot⟩ := ck_obj hch hf
    have hsz := ck_size hF hL ho hot
    rw [← hob]
    have h := hk _ ⟨o, ho, j, by unfold Obj.HasSlot; omega, by rw [hot]; exact hF.ckProt j hj, rfl⟩
    unfold Obj.cell at h
    unfold fld rd
    rw [h]

/-- The stack / memory slots of an EV record survive a change keeping the `prot` cells. -/
theorem ev13_of_protKeep {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {Γ : Gam} {s u : State σ} {p : Ptrs} (hL : Layout C p Γ) (hk : ProtKeep C Γ s u) {e : Obj}
    (he : e ∈ Γ) (het : e.ty = tEV) :
    fld u.memory e.base 8 = fld s.memory e.base 8 ∧ fld u.memory e.base 24 = fld s.memory e.base 24 := by
  have hsz := ev_size hF hL he het
  have key : ∀ j, j ∈ evProtSlots → j ≤ 29 →
      fld u.memory e.base (8 * j) = fld s.memory e.base (8 * j) := by
    intro j hj hj'
    have h := hk _ ⟨e, he, j, by unfold Obj.HasSlot; omega, by rw [het]; exact hF.evProt j hj, rfl⟩
    unfold Obj.cell at h
    unfold fld rd
    rw [h]
  exact ⟨key 1 (by simp [evProtSlots]) (by omega), key 3 (by simp [evProtSlots]) (by omega)⟩

/-- A run keeping the `prot` cells is a step of the typed heap (for any running frame). -/
theorem gStep_of_run {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {gw : List MlS} {Γ Γ1 : Gam} {s u : State σ} {p p1 : Ptrs} (hG : G C H Γ s)
    (hrun : Run C H gw Γ s Γ1 u p p1) (hk : ProtKeep C Γ s u) (top : BitVec 64) :
    GStep C tEV Γ Γ1 s u top := by
  obtain ⟨q, hq, hord, hL, _⟩ := hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hrun.1)
  obtain ⟨h1, h2, h3, h4, h5, h6, -, -⟩ := hrun
  obtain ⟨q1, hq1, hord1, hL1, _⟩ := h6
  obtain rfl : q1 = p1 := Option.some.inj (hq1.symm.trans h2)
  exact ⟨q, q1, h1, h2, hord, hord1, hL, hL1, h3, h4, h5, fun e he het _ =>
    ev13_of_protKeep hF hL hk he het⟩

/-- The chain under a run that keeps the `prot` cells, `ev`, `cur_cont` and `frame_mem_ptr`. -/
theorem chain_of_keep {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {gw : List MlS} (hgw : nmEv ∉ gw ∧ nmCC ∉ gw) {Γ Γ1 : Gam} {s u : State σ} {p p1 : Ptrs}
    (hG : G C H Γ s) (hrun : Run C H gw Γ s Γ1 u p p1) (hfp : p1.fp = p.fp)
    (hk : ProtKeep C Γ s u) {fs : List Frame} (hch : ChainL C tEV tCK Γ s fs) :
    ChainL C tEV tCK Γ1 u fs ∧ Phi u = Phi s := by
  obtain ⟨q, hq, hord, hL, _⟩ := hG
  rw [hrun.1, Option.some.injEq] at hq
  subst hq
  have hfk := framesKept_of_protKeep hF hord hL hch hk
  have hkeep : ChainKeep s u fs := by
    refine ⟨?_, ?_, fun f hf k hk' => fk_ck hfk hf ?_, fun f hf k hk' => fk_ev hfk
      (List.mem_of_mem_tail hf) ?_, fun f hf k hk' => fk_ev hfk (List.mem_of_mem_head? hf) ?_,
      fun p' hp' => ⟨p, hrun.1, ?_⟩, fun f hf k hk' => fk_rd hfk hf hk'⟩
    · unfold gword; rw [hrun.2.2.2.2.2.2.2 _ hF.pgEv hgw.1]
    · unfold gword; rw [hrun.2.2.2.2.2.2.2 _ hF.pgCC hgw.2]
    · simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart, ckOutSize,
        List.mem_cons, List.mem_nil_iff, or_false] at hk' ⊢; omega
    · simp only [evParentSlots, evSp, evStackCap, evMem, evMemCap, evMemLen,
        List.mem_cons, List.mem_nil_iff, or_false] at hk' ⊢; omega
    · simp only [evMem, evMemCap, List.mem_cons, List.mem_nil_iff, or_false] at hk' ⊢; omega
    · rw [hrun.2.1, Option.some.injEq] at hp'; subst hp'; exact hfp
  have hc' := chainL_keep hch hkeep (top := (fs.head?.map Prod.fst).getD 0)
    (fun f hf => by rw [Option.mem_def] at hf; rw [hf]; rfl)
    (gStep_of_run hF ⟨p, hrun.1, hord, hL, ‹_›⟩ hrun hk _)
  refine ⟨hc', ?_⟩
  rw [phi_eq hc'.chain, phi_eq hch.chain]
  refine wsum_keep fun f hf => ⟨fun k hk' => fk_ev hfk hf ?_, fk_ck hfk hf (by simp [ckDone])⟩
  simp only [evGasLeft, evSpilled, evRunning, List.mem_cons, List.mem_nil_iff, or_false] at hk' ⊢
  omega

/-- A write to a `prot` slot (`0 < k < 13`) of a CK object of the run's typing lying in space
unallocated at the run's start. -/
theorem run_ckw {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {gw : List MlS} {Γ0 Γ1 : Gam} {s0 w : State σ} {p0 p1 : Ptrs}
    (hrun : Run C H gw Γ0 s0 Γ1 w p0 p1) {o : Obj} (ho : o ∈ Γ1) (hot : o.ty = tCK) {j : Nat}
    (hj0 : 0 < j) (hj : j < 13) (hfresh : ¬ p0.Allocated (o.cell j).toNat) (x : BitVec 64) :
    Run C H gw Γ0 s0 Γ1 { w with memory := upd w.memory (o.cell j) x } p0 p1 := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩ := hrun
  have ⟨q, hq, hord, hL, _⟩ := h6
  have hsafe : SafeCells C H Γ1 w (fun a => a = o.cell j) := by
    rintro a rfl
    exact safe_ck hF hL ho hot hj0 hj rfl
  refine ⟨h1, h2, h3, h4, h5, G_safe hF.hooks h6 hsafe
    (modifiesOnly_upd (R := fun a => a = o.cell j) (modifiesOnly_refl _ _) rfl _) rfl rfl rfl,
    fun a ha => ?_, h8⟩
  show upd w.memory (o.cell j) x a = s0.memory a
  rw [upd_ne _ _ fun he => ?_, h7 a ha]
  subst he
  exact ha (Or.inr (Or.inr hfresh))

theorem protKeep_ckw {C : Cfg} {Γ : Gam} {s0 w : State σ} {p : Ptrs} (hord : p.Ordered)
    (hL : Layout C p Γ) (hk : ProtKeep C Γ s0 w) {a : BitVec 64} (hfresh : ¬ p.Allocated a.toNat)
    (x : BitVec 64) : ProtKeep C Γ s0 { w with memory := upd w.memory a x } := by
  intro b hb
  show upd w.memory a x b = _
  rw [upd_ne _ _ fun he => ?_, hk b hb]
  subst he
  obtain ⟨o, ho, k, hk', -, rfl⟩ := hb
  exact hfresh (Helpers.allocated_of_inObj hL (cell_in hord hL ho hk'))

end InitECandidate.Solver.MemSafe.Frames
