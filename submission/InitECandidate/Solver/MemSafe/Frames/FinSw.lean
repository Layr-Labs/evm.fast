import InitECandidate.Solver.MemSafe.Frames.FinA4

/-!
# `finish_child`: the switch to the parent

`ev = parent; cur_cont = lds 1 (rec + CK_PARENT_CONT);` — **`finB_switch`**: from the chain at
the state `u` before the switch, `FinB` holds right after it (relative to `sw := u`), with the
parent's `RetOK`.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- **The switch.** -/
theorem finB_switch {C : Cfg} {H : Hooks σ} {tEV tCK : Nat}
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hD : DrvCfg C H tEV tCK)
    {Γa : Gam} {u t : State σ} {e c e' c' : BitVec 64} {rest : List Frame} (hG : G C H Γa u)
    (hch : ChainL C tEV tCK Γa u ((e, c) :: (e', c') :: rest)) (hm : t.memory = u.memory)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be)
    (hge : t.globals.lookup nmEv = some (.val (.word e')))
    (hgc : t.globals.lookup nmCC = some (.val (.word c')))
    (hgo : ∀ g, g ≠ nmEv → g ≠ nmCC → t.globals.lookup g = u.globals.lookup g)
    (hJ0 : JrNZ u) (hx : ChainE P R Γa u ((e, c) :: (e', c') :: rest)) :
    FinB C H tEV tCK P R u e c e' c' rest Γa t ∧ RetOK C Γa t.memory e' := by
  have hp : ptrsOf t = ptrsOf u := by
    have hne : ∀ g, g = gHeap ∨ g = gFrame ∨ g = gScratch → g ≠ nmEv ∧ g ≠ nmCC := by
      rintro g (rfl | rfl | rfl) <;> exact ⟨by decide, by decide⟩
    unfold ptrsOf gword
    rw [hgo _ (hne gHeap (Or.inl rfl)).1 (hne gHeap (Or.inl rfl)).2,
      hgo _ (hne gFrame (Or.inr (Or.inl rfl))).1 (hne gFrame (Or.inr (Or.inl rfl))).2,
      hgo _ (hne gScratch (Or.inr (Or.inr rfl))).1 (hne gScratch (Or.inr (Or.inr rfl))).2]
  have hcm := hch.marks [] (e, c) (e', c') rest rfl
  obtain ⟨hmk, -, hfa, -, hlt⟩ := hcm
  refine ⟨⟨G_setEvCC hD hG (hch.objs (e', c') (by simp)).1 (hch.objs (e', c') (by simp)).2 hm hd hbe
      hge hgc hgo, gword_of hge, gword_of hgc, fun f _ j _ => by rw [hm], fun f _ j _ => by rw [hm],
      fun j _ => by rw [hm], hch.objs, hch.nodupE, ?_, ?_, ?_, ?_, ?_,
      jrNZ_of_lookup (fun g hg => by
        rcases jrGs_cases hg with rfl | rfl <;> exact hgo _ (by decide) (by decide)) hJ0, chainE_congrP hm hp hx⟩, ?_⟩
  · exact markOK_congr hm hp hmk
  · intro q hq; exact hlt q (hp ▸ hq)
  · intro f hf; exact hfa f hf
  · intro l1 ch pa l2 hfs
    have h := hch.marks ((e, c) :: l1) ch pa l2 (by rw [hfs]; rfl)
    obtain ⟨a1, a2, a3, a4, a5⟩ := h
    unfold ChildMarks
    rw [hm]
    refine ⟨markOK_congr (by rw [hm]) hp a1, fun f hf => a2 f (by
      rcases List.mem_append.mp hf with h | h
      · exact List.mem_append_left _ (List.mem_cons_of_mem _ h)
      · exact List.mem_append_right _ h), a3, a4, fun q hq => a5 q (hp ▸ hq)⟩
  · intro f hf; rw [hm]; exact hch.retd f (by simp [hf])
  · rw [hm]; exact hch.retd (e', c') (by simp)

end InitECandidate.Solver.MemSafe.Frames
