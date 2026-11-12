import InitECandidate.Solver.MemSafe.Ptx.PtD14

/-!
# F3e: `hdecAllocF2` (a fresh block ordered after listed earlier blocks), `bufok0_pre`, ghost helpers
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

variable {σ : Type}

theorem env_set_same {En : Env} {x : MlS} {v : ValueHOL 64} (h : En x = some v) : En.set x v = En := by
  funext y
  by_cases hy : y = x
  · subst hy; rw [env_set_self, h]
  · rw [env_set_ne _ _ hy]

theorem env_set_set (En : Env) (x : MlS) (v w : ValueHOL 64) : (En.set x v).set x w = En.set x w := by
  funext y
  by_cases hy : y = x
  · subst hy; rw [env_set_self, env_set_self]
  · rw [env_set_ne _ _ hy, env_set_ne _ _ hy, env_set_ne _ _ hy]

theorem hoare_exC {α : Type} {C : α → Prop} {P : α → State σ → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : ∀ a, C a → Hoare σ guestCtx (P a) c Q) :
    Hoare σ guestCtx (fun s => ∃ a, C a ∧ P a s) c Q :=
  fun s hs ⟨a, ha, hP⟩ => h a ha s hs hP

/-- A buffer that was safe at the ghost entry is a safe argument buffer now. -/
theorem bufok0_pre {E : PtE σ} (hP : PtPre E) {D Γ u p} (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p)
    {w : BitVec 64} {n : Nat} (hB : BufOK guestC E.Γ0 E.p0 w.toNat n) : (Fct.bufok0 w n).holds E.p0 Γ p u := by
  refine ⟨bufOK_step (ptRun_ord0 h) (ptRun_ord h) (ptRun_mono h) (ptRun_ext h) h.2.2.2.2.1 hB, fun x hx => ?_⟩
  obtain ⟨q, hq, hord, hL⟩ := pre_layout hP
  rcases hB x hx with ⟨o, ho, k, hk, -, rfl⟩ | ⟨-, hal⟩
  · exact Or.inl (inObj_ext (ptRun_ext h) (cell_in hord hL ho hk))
  · exact Or.inr hal

/-- The end of a fresh heap block lies below the allocator pointer. -/
theorem fbuf_end_le {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {S : FS} {w : BitVec 64} {N : Nat}
    (hL : HoldsAll p0 Γ p u S) (h0 : p0.Ordered) (hord : p.Ordered) (hfb : S (Fct.fbuf w N))
    (hprop : S (Fct.prop (BlkP w N))) (hN8 : N % 8 = 0) (hN : 0 < N) : w.toNat + N ≤ p.hp := by
  obtain ⟨hw8, hwb, hwe⟩ := hL _ hprop
  have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
  have hc := fbuf_cellS (p0 := p0) hL hfb hprop (o := N - 8) (by omega) (by omega)
  have hn := hc.1
  have hf := hc.2.2
  have hal := alloc_of_fresh h0 hord hf
  unfold Ptrs.Allocated at hal
  obtain ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ := hord
  rcases hal with ⟨-, h2⟩ | ⟨h1, -⟩ | ⟨h1, -⟩
  · rw [hn] at h2; omega
  · rw [hn] at h1; unfold heapEnd at *; omega
  · rw [hn] at h1; unfold heapEnd at *; omega

end InitECandidate.Solver.MemSafe.Ptx
