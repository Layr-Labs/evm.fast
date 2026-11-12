import InitECandidate.Solver.MemSafe.Ptx.PcmStep3

/-!
# F3c: `create_finish` as a step (`step_cf`, from `HypCfL`'s relation)
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

theorem step_cf {vs : List (ValueHOL 64)} {u t : State σ} {r : PanSemResultExact 64} {Γ : Gam} {p : Ptrs}
    {child msg : BitVec 64} {e : Obj}
    (hR : SumRelO guestC (Hooks.guestHooksR (σ := σ)) (sgA 2 [Hooks.gJn]) (CfPre guestC tEV)
      (PWtopL gasKs) CfQ vs u r t)
    (hvs : vs = [.val (.word msg), .val (.word child)])
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u) (hp : ptrsOf u = some p) (hJ : JrNZ u)
    (hev : gword u nmEv = some child) (heo : e ∈ Γ) (hee : e.ty = tEV) (heb : e.base = child)
    (hcf : CfOK guestC Γ u.memory p msg) (hg : Good (some r)) (hna : ¬ Abortive r) :
    ∃ (Γ' : Gam) (p' : Ptrs), RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ u Γ' t p p' ∧
      XKeep guestC Γ u.memory t.memory (child, 0) ∧ LstKeep Γ u.memory t.memory := by
  subst hvs
  obtain ⟨Γ', p0, p', hc, -⟩ := hR hg hna Γ hG ⟨p, hp, argsOK_any (sgA_any 2 _) rfl⟩
    ⟨⟨e, heo, hee, heb ▸ hev⟩, hJ, fun m hm q hq => by
      simp only [List.head?_cons, Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hm
      subst hm
      obtain rfl : q = p := Option.some.inj (hq.symm.trans hp)
      exact hcf⟩
  obtain rfl : p0 = p := Option.some.inj (hc.1.symm.trans hp)
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  obtain rfl : q = _ := Option.some.inj (hq.symm.trans hp)
  have hsz := ev_size (Hooks.frameCfg_guestHooksR (σ := σ)) hL heo hee
  refine ⟨Γ', p', step_core hc hG (fun a ha => absurd ha (argCells_any (sgA_any 2 _))) (fun g hg => hg) heo hee heb
    ?_ ?_ ?_⟩
  · rintro a - (⟨-, ⟨⟨-, hnm⟩, -⟩⟩ | hn) ⟨o, ho, hty, hio⟩
    · exact hnm o ho hty hio
    · exact hn ⟨o, ho, hio.1, hio.2⟩
  · rintro a - (⟨-, ⟨-, hnl⟩⟩ | hn) ⟨o, ho, hty, hio⟩
    · exact hnl o ho hty hio
    · exact hn ⟨o, ho, hio.1, hio.2⟩
  · rintro a - (⟨-, ⟨⟨hwtop, -⟩, -⟩⟩ | hn) j hj rfl
    · have hio : InO e (e.cell j) :=
        inO_cell hord hL heo (k := 8 * j) (by simp [evXSlots] at hj; omega)
      rcases hwtop with ⟨e', ⟨he', het', heb'⟩, k, hk, hak⟩ | hnf
      · rw [hev] at heb'
        have hb' : e'.base = e.base := by
          have := Option.some.inj heb'
          rw [heb]; exact this.symm
        have h1 : e.cell k = e.cell j := by
          unfold Obj.cell at hak ⊢
          rw [hb'] at hak; exact hak.symm
        have hkj : k ≠ j := by
          simp only [gasKs, List.mem_cons, List.mem_nil_iff, or_false] at hk
          simp only [evXSlots, List.mem_cons, List.mem_nil_iff, or_false] at hj
          omega
        exact Struct.cell_ne e (by simp [gasKs] at hk; omega) (by simp [evXSlots] at hj; omega) hkj h1
      · exact hnf e heo (Or.inl hee) hio
    · exact hn ⟨e, heo, (inO_cell hord hL heo (k := 8 * j) (by simp [evXSlots] at hj; omega)).1,
        (inO_cell hord hL heo (k := 8 * j) (by simp [evXSlots] at hj; omega)).2⟩

end InitECandidate.Solver.MemSafe.Ptx
