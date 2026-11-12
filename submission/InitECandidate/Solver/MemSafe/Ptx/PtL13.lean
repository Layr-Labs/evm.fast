import InitECandidate.Solver.MemSafe.Ptx.PtL12

/-!
# F3e: loop 2 -- the inner loop and the outer step
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

theorem j2_clk {E : PtE σ} {En0 : Env} {S : FS} {iv kv a2 nsv : BitVec 64} (s : State σ)
    (h : J2 E En0 S iv kv a2 nsv s) : J2 E En0 S iv kv a2 nsv (decClockHOLFinite s) := by
  obtain ⟨jv, kv', h1, h2, hpa⟩ := h
  exact ⟨jv, kv', h1, h2, pa_decClock hpa⟩

theorem l2_inner_loop {E : PtE σ} {En0 : Env} {S : FS} {ak nv nkv w : BitVec 64} {rp rl : BitVec 64} {buf n : Nat}
    {CV : List (BitVec 64)} (hP : PtPreX E) (K : L2C E En0 S ak nv nkv w rp rl buf n CV)
    (iv kv a2 nsv : BitVec 64) (hiv : iv.toNat < nv.toNat)
    (hnsv : nsv.toNat = Hooks.accNs E.s0.memory (lst0 E) iv.toNat) (hkv : kv.toNat = nsS E.s0.memory (lst0 E) iv.toNat) :
    Hoare σ guestCtx (PA E (LI En0 iv kv a2 nsv 0) S) ptS212
      (fun r t => r = none ∧ ∃ kv'' : BitVec 64, kv''.toNat = kv.toNat + nsv.toNat ∧
        PA E (LI En0 iv kv'' a2 nsv nsv) S t) := by
  have hnsb : nsv.toNat < 2 ^ 58 := by
    have := nsS_mono E.s0.memory (lst0 E) (show iv.toNat + 1 ≤ nv.toNat by omega)
    rw [nsS_succ] at this
    have := K.hnkv
    have := nk_bound hP.toPtPre K.hnv K.hnkv
    omega
  have e_j : ∀ kv' jv, LI En0 iv kv' a2 nsv jv (nm "j") = some (.val (.word jv)) := by
    intro kv' jv; unfold LI LE2; simp (config := {decide := true}) [Env.set]
  have e_ns : ∀ kv' jv, LI En0 iv kv' a2 nsv jv (nm "ns") = some (.val (.word nsv)) := by
    intro kv' jv; unfold LI LE2; simp (config := {decide := true}) [Env.set]
  unfold ptS212
  refine hoare_pre (hoare_while2 (I := J2 E En0 S iv kv a2 nsv) (fun s h => j2_clk s h) ?_ ?_) ?_
  · intro s hs ⟨⟨jv, kv', hle, hk', hpa⟩, hc⟩
    have hlt := cond_lt_true (hpa.2 _ _ (e_j kv' jv)) (hpa.2 _ _ (e_ns kv' jv)) (by omega) (by omega) hc
    exact l2_inner_step hP K iv kv a2 nsv jv kv' hiv hnsv hkv hlt hk' s hs hpa
  · intro s hs ⟨jv, kv', hle, hk', hpa⟩ hc
    have hge := cond_lt_false (hpa.2 _ _ (e_j kv' jv)) (hpa.2 _ _ (e_ns kv' jv)) (by omega) (by omega) hc
    have : jv = nsv := BitVec.eq_of_toNat_eq (by omega)
    subst this
    exact ⟨kv', by omega, hpa⟩
  · intro s _ hpa
    exact ⟨0, kv, by simp, by simp, hpa⟩

end InitECandidate.Solver.MemSafe.Ptx
