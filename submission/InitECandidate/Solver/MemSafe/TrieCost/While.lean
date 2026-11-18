import InitECandidate.Solver.MemSafe.TrieCost.Orbit
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.TrieCost
variable {σ : Type} {X : Ctx 64}
theorem tw_while_costP (hC : X.code.lookup = guestCode) {lo : BitVec 64} {L : Nat}
    (hD : DomIn X.memaddrs lo L) (hL : L + 8 ≤ 2 ^ 64) (N : Nat) {Bb : Nat}
    (hb : Cost σ X twLoopBody Bb) :
    Inv.CostP σ X (fun s => twA X.memaddrs s ≤ N) (.while twCond twLoopBody) ((N + 1) * (L + 2) * (Bb + 1)) := by
  have hQdom : ∀ (M : BitVec 64 → HolWordLab 64) v, zQ X.memaddrs M v = true →
      (v - lo).toNat < L := fun M v h => hD v (zQ_dom h).2
  refine (costP_while_doomed_start (fun s => twA X.memaddrs s ≤ N) (twMu X.memaddrs (L + 1)) (N * (L + 1 + 1) + (L + 1))
    (fun s => InCtx s X ∧ ∃ V, s.locals.lookup (nm "node") = some (.val (.word V)) ∧
      runLenG (zQ X.memaddrs s.memory) (zG s.memory) (L + 1) V = L + 1)
    hb ?_ ?_ ?_).mono (le_of_eq ?_)
  · -- the measure is bounded
    intro s _ hp _ _
    have h1 : twA X.memaddrs s ≤ N := hp
    have h2 : twR X.memaddrs (L + 1) s ≤ L + 1 := runLenG_le _ _ _ _
    have := Nat.mul_le_mul_right (L + 1 + 1) h1
    unfold twMu
    omega
  · -- completed iterations from non-doomed states decrease it
    intro s hs hc _ hnd hexit
    have hstep := tw_step hC (decClockHOLFinite s) (decClockHOLFinite s) hs
      ⟨rfl, InitECandidate.Solver.Spec.condTrue_decClock.mpr hc⟩ (by rcases hexit with h | h <;> rw [h] <;> simp) hexit
    have hA0 : twA X.memaddrs (decClockHOLFinite s) = twA X.memaddrs s := rfl
    generalize evaluateHOLFiniteState (decClockHOLFinite s) twLoopBody = E at hstep ⊢
    obtain ⟨r, t⟩ := E
    dsimp only at hstep ⊢
    rcases hstep with hlt | ⟨V, hV, hQ, hn, hm, hA⟩
    · rw [hA0] at hlt
      have h2 : twR X.memaddrs (L + 1) t ≤ L + 1 := runLenG_le _ _ _ _
      have := Nat.mul_le_mul_right (L + 1 + 1) (Nat.succ_le_of_lt hlt)
      rw [Nat.succ_mul] at this
      unfold twMu
      omega
    · rw [hA0] at hA
      have hV' : s.locals.lookup (nm "node") = some (.val (.word V)) := hV
      have hQ' : zQ X.memaddrs s.memory V = true := hQ
      have hn' : t.locals.lookup (nm "node") = some (.val (.word (zG s.memory V))) := hn
      have hm' : t.memory = s.memory := hm
      have hnotfull : runLenG (zQ X.memaddrs s.memory) (zG s.memory) (L + 1) V ≠ L + 1 :=
        fun h => hnd ⟨hs, V, hV', h⟩
      have hR0 : runLenG (zQ X.memaddrs s.memory) (zG s.memory) (L + 1) V =
          runLenG (zQ X.memaddrs s.memory) (zG s.memory) L (zG s.memory V) + 1 := by
        simp only [runLenG, hQ', if_true]
      have hle := runLenG_le (zQ X.memaddrs s.memory) (zG s.memory) L (zG s.memory V)
      have hR1 := runLenG_succ_of_lt (zQ X.memaddrs s.memory) (zG s.memory) L (zG s.memory V)
        (by omega)
      have ht : twR X.memaddrs (L + 1) t =
          runLenG (zQ X.memaddrs s.memory) (zG s.memory) L (zG s.memory V) := by
        unfold twR
        rw [hm', wl_of hn', hR1]
      have hs' : twR X.memaddrs (L + 1) s =
          runLenG (zQ X.memaddrs s.memory) (zG s.memory) (L + 1) V := by
        unfold twR
        rw [wl_of hV']
      unfold twMu
      rw [hA, ht, hs', hR0]
      omega
  · -- doomed states loop forever
    intro s ⟨hs, V, hV, hfull⟩
    have hQV : zQ X.memaddrs s.memory V = true :=
      (runLenG_eq_iff _ _ (L + 1) V).mp hfull 0 (by omega)
    have hV0 := (zQ_dom hQV).1
    refine ⟨⟨1, ?_, by decide⟩, fun hg => ?_⟩
    · have : ev s twCond = some (.val (.word (if wordCmpHOL .notEqual V (BitVec.ofNat 64 0)
          then 1 else 0))) := ev_cmp (ev_lw hV) (ev_cw _ 0)
      rw [show wordCmpHOL .notEqual V (BitVec.ofNat 64 0) = true by
        simp [wordCmpHOL]; exact hV0] at this
      exact this
    · have hd := tw_doom hC s.memory V hQV (decClockHOLFinite s) hs ⟨rfl, hV⟩ hg
      obtain ⟨hr, hm, hn⟩ := hd
      refine ⟨Or.inl hr, inCtx_eval (s := decClockHOLFinite s) hs twLoopBody, zG s.memory V, hn, ?_⟩
      rw [hm]
      exact runLen_full_dom (hQdom s.memory) V hfull
  · ring

#print axioms tw_while_costP
end InitECandidate.Solver.MemSafe.TrieCost
