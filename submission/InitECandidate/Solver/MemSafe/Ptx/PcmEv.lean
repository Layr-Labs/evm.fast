import InitECandidate.Solver.MemSafe.Ptx.PcmStep4

/-!
# F3c: writes to the running frame's driver cells, and `ev := value`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Entry2

variable {σ : Type}

def EvDrv (b a : BitVec 64) : Prop := ∃ j ∈ evDriverSlots, a = b + BitVec.ofNat 64 (8 * j)

/-- Eon: the driver cells with `EV_OUTPUT_N`. -/
def EvDrv16 (b a : BitVec 64) : Prop := ∃ j ∈ evDriverSlots16, a = b + BitVec.ofNat 64 (8 * j)

theorem drv_step {Γ : Gam} {u t : State σ} {p : Ptrs} {e : Obj} {child : BitVec 64}
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u) (hp : ptrsOf u = some p) (he : e ∈ Γ)
    (het : e.ty = tEV) (heb : e.base = child)
    (hmod : ModifiesOnly (EvDrv e.base) u.memory t.memory) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ u Γ t p p ∧
      XKeep guestC Γ u.memory t.memory (child, 0) ∧ LstKeep Γ u.memory t.memory := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨q, hq, hord0, hL0, -⟩ := id hG
  have hqp : q = p := Option.some.inj (hq.symm.trans hp)
  have hord : p.Ordered := hqp ▸ hord0
  have hL : Layout guestC p Γ := hqp ▸ hL0
  have hsz := ev_size hF hL he het
  have hsafe : SafeCells guestC (Hooks.guestHooksR (σ := σ)) Γ u (EvDrv e.base) := by
    rintro a ⟨j, hj, rfl⟩
    exact safe_ev hF hL he het hj (by unfold Obj.cell; rfl)
  have hG' := G_safe hF.hooks hG hsafe hmod hg hd hbe
  have hj24 : ∀ j ∈ evDriverSlots, j ≤ 24 := by intro j hj; simp [evDriverSlots] at hj; omega
  have hkeepO : ∀ o ∈ Γ, o.ty ≠ tEV → ∀ k, o.HasSlot k →
      rd t.memory (o.cell k) = rd u.memory (o.cell k) := by
    intro o ho hty k hk
    unfold rd
    have hn : ¬ EvDrv e.base (o.cell k) := fun ⟨j, hj, h⟩ =>
      Frames.cell_ne hord hL ho he (k := 8 * k) (k' := 8 * j)
        (by unfold Obj.HasSlot at hk; omega) (by have := hj24 j hj; omega)
        (Or.inl (Ptx.base_ne_of_ty hord hL ho he (by rw [het]; exact hty))) h
    rw [hmod _ hn]
  have hb : BKeep guestC Γ u t := bkeep_of_keepTys fun o ho hty k hk _ =>
    hkeepO o ho (fun h => hF.evK (h ▸ hty)) k hk
  refine ⟨⟨hp, by rw [ptrsOf_congr hg]; exact hp, mono_refl p, ext_refl Γ, newFresh_refl Γ p p, hG',
    fun g _ _ => by rw [hg], hb⟩, ⟨fun j hj => ?_, fun o ho hty k hk _ => ?_⟩,
    fun o ho hty k hk => hkeepO o ho (fun h => ?_) k hk⟩
  · subst heb
    have hj' : j ≤ 28 := by simp [evXSlots] at hj; omega
    show rd t.memory (e.base + BitVec.ofNat 64 (8 * j)) = rd u.memory (e.base + BitVec.ofNat 64 (8 * j))
    unfold rd
    have hn : ¬ EvDrv e.base (e.base + BitVec.ofNat 64 (8 * j)) := fun ⟨j', hj', h⟩ => by
      have hne : j ≠ j' := by
        simp only [evXSlots, List.mem_cons, List.mem_nil_iff, or_false] at hj
        simp only [evDriverSlots, List.mem_cons, List.mem_nil_iff, or_false] at hj'
        omega
      exact Struct.cell_ne e (j := j) (k := j') (by omega) (by have := hj24 j' hj'; omega) hne h
    rw [hmod _ hn]
  · exact hkeepO o ho (fun h => by rw [h] at hty; exact absurd hty (by decide)) k hk
  · rw [h] at hty
    rcases hty with h | h <;> simp [Hooks.lstTys, Hooks.IsLstA] at h <;> omega

/-- **Eon: `drv_step` with `EV_OUTPUT_N` among the written cells** (a bounded word `hv`). -/
theorem drv_step16 {Γ : Gam} {u t : State σ} {p : Ptrs} {e : Obj} {child : BitVec 64}
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u) (hp : ptrsOf u = some p) (he : e ∈ Γ)
    (het : e.ty = tEV) (heb : e.base = child)
    (hmod : ModifiesOnly (EvDrv16 e.base) u.memory t.memory)
    (hv : (rd t.memory (e.base + BitVec.ofNat 64 128)).toNat < 2 ^ 32) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ u Γ t p p ∧
      XKeep guestC Γ u.memory t.memory (child, 0) ∧ LstKeep Γ u.memory t.memory := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨q, hq, hord0, hL0, -⟩ := id hG
  have hqp : q = p := Option.some.inj (hq.symm.trans hp)
  have hord : p.Ordered := hqp ▸ hord0
  have hL : Layout guestC p Γ := hqp ▸ hL0
  have hsz := ev_size hF hL he het
  have hsafe : SafeCellsB guestC (Hooks.guestHooksR (σ := σ)) Γ u t (EvDrv16 e.base) := by
    rintro a ⟨j, hj, rfl⟩
    rcases evDriverSlots16_of hj with rfl | hj'
    · exact safe_ev16 hF hL he het (by unfold Obj.cell; rfl) hv
    · exact safeB_of_safe (safe_ev hF hL he het hj' (by unfold Obj.cell; rfl))
  have hG' := G_safeB hF.hooks hG hsafe hmod hg hd hbe
  have hj24 : ∀ j ∈ evDriverSlots16, j ≤ 24 := by intro j hj; simp [evDriverSlots16] at hj; omega
  have hkeepO : ∀ o ∈ Γ, o.ty ≠ tEV → ∀ k, o.HasSlot k →
      rd t.memory (o.cell k) = rd u.memory (o.cell k) := by
    intro o ho hty k hk
    unfold rd
    have hn : ¬ EvDrv16 e.base (o.cell k) := fun ⟨j, hj, h⟩ =>
      Frames.cell_ne hord hL ho he (k := 8 * k) (k' := 8 * j)
        (by unfold Obj.HasSlot at hk; omega) (by have := hj24 j hj; omega)
        (Or.inl (Ptx.base_ne_of_ty hord hL ho he (by rw [het]; exact hty))) h
    rw [hmod _ hn]
  have hb : BKeep guestC Γ u t := bkeep_of_keepTys fun o ho hty k hk _ =>
    hkeepO o ho (fun h => hF.evK (h ▸ hty)) k hk
  refine ⟨⟨hp, by rw [ptrsOf_congr hg]; exact hp, mono_refl p, ext_refl Γ, newFresh_refl Γ p p, hG',
    fun g _ _ => by rw [hg], hb⟩, ⟨fun j hj => ?_, fun o ho hty k hk _ => ?_⟩,
    fun o ho hty k hk => hkeepO o ho (fun h => ?_) k hk⟩
  · subst heb
    have hj' : j ≤ 28 := by simp [evXSlots] at hj; omega
    show rd t.memory (e.base + BitVec.ofNat 64 (8 * j)) = rd u.memory (e.base + BitVec.ofNat 64 (8 * j))
    unfold rd
    have hn : ¬ EvDrv16 e.base (e.base + BitVec.ofNat 64 (8 * j)) := fun ⟨j', hj', h⟩ => by
      have hne : j ≠ j' := by
        simp only [evXSlots, List.mem_cons, List.mem_nil_iff, or_false] at hj
        simp only [evDriverSlots16, List.mem_cons, List.mem_nil_iff, or_false] at hj'
        omega
      exact Struct.cell_ne e (j := j) (k := j') (by omega) (by have := hj24 j' hj'; omega) hne h
    rw [hmod _ hn]
  · exact hkeepO o ho (fun h => by rw [h] at hty; exact absurd hty (by decide)) k hk
  · rw [h] at hty
    rcases hty with h | h <;> simp [Hooks.lstTys, Hooks.IsLstA] at h <;> omega

/-- **`G` after assigning `ev`** a small word or an `EV` object. -/
theorem G_ev_set {Γ : Gam} {s t : State σ} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    (hm : t.memory = s.memory) (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hgo : ∀ g, g ≠ nmEv → t.globals.lookup g = s.globals.lookup g)
    (hev : ∃ e, gword t nmEv = some e ∧ (e.toNat < nullMax ∨ ∃ o ∈ Γ, o.base = e ∧ o.ty = tEV)) :
    G guestC (Hooks.guestHooksR (σ := σ)) Γ t := by
  obtain ⟨p, hp, hord, hL, hF, hT, hGl, hW⟩ := hG
  have hpt : ptrsOf t = some p := by
    rw [← hp]
    unfold ptrsOf gword
    rw [hgo gHeap (by decide), hgo gFrame (by decide), hgo gScratch (by decide)]
  refine ⟨p, hpt, hord, hL, by rw [hm]; exact hF, by rw [hm]; exact hT, ?_, fun o ho => ?_⟩
  · intro g k hk
    by_cases h1 : g = nmEv
    · subst h1
      rw [gt_ev] at hk
      cases hk
      exact hev
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    refine ⟨v, ?_, hf⟩
    unfold gword at hv ⊢
    rw [hgo g h1]
    exact hv
  · exact Hooks.drvCfg_guestHooksR.hookGlob Γ s t o (hW o ho) hm hd hbe fun g _ h1 h2 =>
      hgo g h1

end InitECandidate.Solver.MemSafe.Ptx
