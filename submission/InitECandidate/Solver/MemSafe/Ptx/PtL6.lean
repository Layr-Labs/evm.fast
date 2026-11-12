import InitECandidate.Solver.MemSafe.Ptx.PtL5

/-!
# F3e: loop 1 -- the loop
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

theorem hoare_while2 {I Qf : State σ → Prop} {c : ExpHOL 64} {body : ProgHOL 64}
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hb : Hoare σ guestCtx (fun s => I s ∧ CondTrue s c) body (fun r t => r = none ∧ I t))
    (hexit : ∀ s : State σ, InCtx s guestCtx → I s → ev s c = some (.val (.word 0)) → Qf s) :
    Hoare σ guestCtx I (.while c body) (fun r t => r = none ∧ Qf t) := by
  refine hoare_while hclk (hoare_post hb ?_) (fun s hs hI h => ⟨rfl, hexit s hs hI h⟩)
  intro r t _ _ ⟨hr, hI⟩
  subst hr
  exact ⟨fun _ => hI, (fun h => by cases h), (fun h => by cases h), (fun v h => by cases h)⟩

theorem l1_clk {E : PtE σ} {En0 : Env} {Sb : FS} {wa : BitVec 64} {nbl : Nat} {nv : BitVec 64} (s : State σ)
    (h : L1I E En0 Sb wa nbl nv s) : L1I E En0 Sb wa nbl nv (decClockHOLFinite s) := by
  obtain ⟨iv, nkv, h1, h2, hpa⟩ := h
  exact ⟨iv, nkv, h1, h2, pa_decClock hpa⟩

/-- **Loop 1** (`ptS56`): `nkeys = Σ ns_i`, the pointer array is filled. -/
theorem pt_loop1 {E : PtE σ} {En0 : Env} {Sb : FS} {wa wt nv w : BitVec 64} {nbl : Nat} {rp rl : BitVec 64}
    {buf n : Nat} {CV : List (BitVec 64)} (hP : PtPreX E) (K : L1C E En0 Sb wa wt nv w nbl rp rl buf n CV) :
    Hoare σ guestCtx (PA E (LE En0 0 0) (L1S Sb wa nbl 0)) ptS56
      (fun r t => r = none ∧ ∃ nkv : BitVec 64, nkv.toNat = nsS E.s0.memory (lst0 E) nv.toNat ∧
        PA E (LE En0 nv nkv) (L1S Sb wa nbl nv) t) := by
  have hnvb := nalOK_lt hP.toPtPre K.hnv
  have e_nal : ∀ iv nkv : BitVec 64, LE En0 iv nkv (nm "nal") = some (.val (.word nv)) := by
    intro iv nkv
    rw [le_other iv nkv (by decide) (by decide)]; exact K.hnal
  unfold ptS56
  refine hoare_pre (hoare_while2 (I := L1I E En0 Sb wa nbl nv) (fun s h => l1_clk s h) ?_ ?_) ?_
  · intro s hs ⟨⟨iv, nkv, hle, hnk, hpa⟩, hc⟩
    have hlt := cond_lt_true (hpa.2 _ _ (le_i En0 iv nkv)) (hpa.2 _ _ (e_nal iv nkv))
      (by omega) (by omega) hc
    exact l1_step hP K iv nkv hlt hnk s hs hpa
  · intro s hs ⟨iv, nkv, hle, hnk, hpa⟩ hc
    have hge := cond_lt_false (hpa.2 _ _ (le_i En0 iv nkv)) (hpa.2 _ _ (e_nal iv nkv)) (by omega) (by omega) hc
    have : iv = nv := BitVec.eq_of_toNat_eq (by omega)
    subst this
    exact ⟨nkv, hnk, hpa⟩
  · intro s _ hpa
    refine ⟨0, 0, by simp, ?_, hpa⟩
    simp [nsS]

end InitECandidate.Solver.MemSafe.Ptx
#print axioms InitECandidate.Solver.MemSafe.Ptx.pt_loop1
