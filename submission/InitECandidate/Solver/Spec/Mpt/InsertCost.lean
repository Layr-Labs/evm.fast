import InitECandidate.Solver.Spec.Mpt.Insert

/-!
# `_mpt_insert_node`: the decrease, the doomed step, the bound

* `ins_dec`: a completed iteration from a non-doomed `InsI`-state keeps `InsI` and lowers
  `insMu`.
* `ins_doom`: from a doomed state the loop condition holds and a good iteration completes
  normally into a doomed state.
* `mpt_insert_node_cost`: `CalleeCost σ X "_mpt_insert_node" ((insMb + 1) * (insB ... + 1))`.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem not_goZ_of_cond {s : PanSemStateFiniteExact 64 σ} (hc : CondTrue s goCond) : ¬ GoZ s := by
  intro hz
  obtain ⟨g, hg, hg0⟩ := go_of_cond hc
  rw [hz] at hg
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hg
  exact hg0 hg.symm

theorem runLen_step {M : Mem} {p : BitVec 64} (hq : quietB M p = true)
    (hlt : runLenG (width := 64) (quietB M) (nxt M) (2 ^ 64 + 1) p < 2 ^ 64 + 1) :
    runLenG (width := 64) (quietB M) (nxt M) (2 ^ 64 + 1) (nxt M p) + 1 =
      runLenG (width := 64) (quietB M) (nxt M) (2 ^ 64 + 1) p := by
  have h1 : runLenG (width := 64) (quietB M) (nxt M) (2 ^ 64 + 1) p =
      runLenG (width := 64) (quietB M) (nxt M) (2 ^ 64) (nxt M p) + 1 := by
    rw [runLenG.eq_2, if_pos hq]
  rw [h1, runLenG_succ_of_lt _ _ _ _ (by omega)]

/-! ## The decrease -/

theorem ins_dec (hC : X.code.lookup = guestCode) (k : Nat) :
    Hoare σ X (fun s => InsI s ∧ ¬ InsDoomed X s ∧ CondTrue s goCond ∧ insMu s = k) insLoopBody
      (fun r t => r = none ∨ r = some .continue → InsI t ∧ insMu t < k) := by
  classical
  intro s hs ⟨hI, hnd, hc, hk⟩ ht hexit
  have hstep := ins_step (σ := σ) (X := X) hC (vn := s.locals.lookup (nm "node"))
    (vs := s.locals.lookup (nm "slot")) (vl := s.locals.lookup (nm "level"))
    (vk := s.locals.lookup (nm "klen")) (M := s.memory) s hs ⟨⟨rfl, rfl, rfl, rfl⟩, rfl⟩ ht
  have hgo := wl_go_ne hc
  have hIs := hI.resolve_left (not_goZ_of_cond hc)
  rcases hstep with ⟨-, hp⟩ | ⟨v, hv⟩
  swap
  · rcases hexit with h | h <;> rw [hv] at h <;> cases h
  generalize ht' : (evaluateHOLFiniteState s insLoopBody).2 = t at hp ⊢
  rcases hp with hz | hd
  · -- terminal
    refine ⟨Or.inl hz, ?_⟩
    have h0 : wl t go_ = 0 := by rw [wl_of hz]
    have hk1 : 1 ≤ k := by rw [← hk]; unfold insMu; rw [if_neg hgo]; split <;> omega
    unfold insMu; rw [if_pos h0]; omega
  obtain ⟨N, S, Lv, K, off, pl, e1, e2, e3, e4, hN, hgo1, hk', hl', hsl', hn', hm', hcase⟩ := hd
  have hMS : S ≠ 0 → s.memory S = .word N := fun hS => hIs S N e2 e1 hS hN
  -- the invariant
  have hIt : InsI t := by
    refine Or.inr fun S' N' h1 h2 h3 h4 => ?_
    rw [hsl'] at h1; rw [hn'] at h2
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h1 h2
    subst h1
    rw [hm']
    unfold memAfter
    by_cases hS0 : S = 0
    · rw [if_pos hS0]; exact h2
    · rw [if_neg hS0]
      unfold upd
      by_cases hSa : N + off = S
      · rw [if_pos hSa]
        rcases zero3_cases s.memory N (N + off) with h | h
        · rw [h, hSa, hMS hS0] at h2
          rw [HolWordLab.word.injEq] at h2
          rw [h2]
        · rw [h] at h2
          exact absurd (HolWordLab.word.inj h2).symm h4
      · rw [if_neg hSa]; exact h2
  refine ⟨hIt, ?_⟩
  -- the measure of the start
  have hNZs : NZ s := ⟨N, e1, hN⟩
  have hwk : wl s (nm "klen") = K := wl_of e4
  have hwl : wl s (nm "level") = Lv := wl_of e3
  have hks : k = 2 + ((K - Lv).toNat + phi s.memory) * Wt +
      (if Chi0 s then 0 else 1) * (2 ^ 64 + 2) + rho s.memory (wl s (nm "slot")) := by
    rw [← hk]; unfold insMu; rw [if_neg hgo, if_pos hNZs, hwk, hwl]
  have hgo1' : wl t go_ ≠ 0 := by rw [wl_of hgo1]; decide
  by_cases hNZt : NZ t
  swap
  · unfold insMu; rw [if_neg hgo1', if_neg hNZt]; omega
  have hkt : insMu t = 2 + ((K - (Lv + pl)).toNat + phi t.memory) * Wt +
      (if Chi0 t then 0 else 1) * (2 ^ 64 + 2) + rho t.memory (N + off) := by
    unfold insMu; rw [if_neg hgo1', if_pos hNZt, wl_of hk', wl_of hl', wl_of hsl']
  rw [hkt, hks]
  -- `A` and `phi`
  obtain ⟨hphi, hphiEq⟩ := phi_mono (memAfter_change hMS)
  rw [← hm'] at hphi hphiEq
  have hA : (K - (Lv + pl)).toNat + pl.toNat = (K - Lv).toNat ∧
      (pl = 1 → (K - Lv).toNat ≠ 0 ∨ Lv ≠ K) := by
    rcases hcase with ⟨hLK, rfl, -⟩ | ⟨-, -, -, hpl⟩
    · refine ⟨?_, fun _ => Or.inr hLK⟩
      have : K - Lv ≠ 0 := fun e => hLK (by bv_omega)
      bv_omega
    · refine ⟨?_, fun _ => ?_⟩
      · bv_omega
      · left; bv_omega
  have hR' : rho t.memory (N + off) ≤ 2 ^ 64 + 1 := runLenG_le _ _ _ _
  have h01 : (if Chi0 t then 0 else 1) ≤ 1 := by split <;> omega
  have hchi' := Nat.mul_le_mul_right (2 ^ 64 + 2) h01
  rw [Nat.one_mul] at hchi'
  by_cases hlt : (K - (Lv + pl)).toNat + phi t.memory < (K - Lv).toNat + phi s.memory
  · have hmul : ((K - (Lv + pl)).toNat + phi t.memory) * Wt + Wt ≤
        ((K - Lv).toNat + phi s.memory) * Wt := by
      rw [← Nat.succ_mul]; exact Nat.mul_le_mul_right _ hlt
    unfold Wt at hmul ⊢
    omega
  -- equal: an extension step with an empty segment, memory unchanged
  have hplz : pl.toNat = 0 := by omega
  have hphi' : phi t.memory = phi s.memory := by omega
  have hmem : t.memory = s.memory := hphiEq hphi'
  have hAeq : (K - (Lv + pl)).toNat = (K - Lv).toNat := by omega
  rw [hAeq, hphi']
  obtain ⟨hoff, hM2, hM40, -⟩ : off = 48 ∧ s.memory N = .word 2 ∧ s.memory (N + 40) = .word pl ∧
      pl.toNat ≤ (K - Lv).toNat := by
    rcases hcase with ⟨_, rfl, _⟩ | h
    · simp at hplz
    · exact h
  subst hoff
  have hpl0 : pl = 0 := BitVec.eq_of_toNat_eq (by simpa using hplz)
  subst hpl0
  -- the new state satisfies `Chi0`
  obtain ⟨N'', hN'', hN''0⟩ := hNZt
  rw [hn', zero3_48] at hN''
  simp only [Option.some.injEq, ValueHOL.val.injEq] at hN''
  have hChi0t : Chi0 t := ⟨N + 48, N'', hsl', by rw [hn', zero3_48, hN''], by rw [hmem, hN'']⟩
  rw [if_pos hChi0t]
  by_cases hChi0s : Chi0 s
  swap
  · rw [if_neg hChi0s]; omega
  rw [if_pos hChi0s]
  -- the quiet orbit point `S - 48`
  have hwsl : wl s (nm "slot") = S := wl_of e2
  rw [hwsl, hmem]
  obtain ⟨S₀, N₀, hS₀, hN₀, hMSN⟩ := hChi0s
  rw [hS₀] at e2; rw [hN₀] at e1
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at e1 e2
  subst e1; subst e2
  have hnxt : nxt s.memory (S₀ - 48) = N₀ := nxt_of hMSN
  have hq : quietB s.memory (S₀ - 48) = true := by
    rw [quietB_iff]
    refine ⟨by rw [hnxt]; exact hN, by rw [hnxt, show S₀ - 48 + 48 = S₀ by bv_omega]; exact hMSN,
      by rw [hnxt]; exact hM2, by rw [hnxt]; exact hM40, ?_⟩
    rw [hnxt, show S₀ - 48 + 48 = S₀ by bv_omega]
    exact zeroOk_of_memAfter (by rw [← hm', hmem])
  have hlt : rho s.memory S₀ < 2 ^ 64 + 1 := by
    have hle : rho s.memory S₀ ≤ 2 ^ 64 + 1 := runLenG_le _ _ _ _
    have hne : rho s.memory S₀ ≠ 2 ^ 64 + 1 := fun h =>
      hnd ⟨hs, go_of_cond hc, S₀, N₀, hS₀, hN₀, hMSN, h⟩
    omega
  have := runLen_step hq hlt
  rw [hnxt] at this
  unfold rho
  rw [show N₀ + 48 - 48 = N₀ by bv_omega]
  unfold rho at hlt
  omega

/-! ## The doomed step -/

theorem ins_doom (hC : X.code.lookup = guestCode)
    (hinv : CalleeEscFree σ X (nm "node_invalidate"))
    (hcpl : CalleeEscFree σ X (nm "common_prefix_length")) (s : PanSemStateFiniteExact 64 σ)
    (hd : InsDoomed X s) : CondTrue s goCond ∧
      (Good (evaluateHOLFiniteState (decClockHOLFinite s) insLoopBody).1 →
        ((evaluateHOLFiniteState (decClockHOLFinite s) insLoopBody).1 = none ∨
          (evaluateHOLFiniteState (decClockHOLFinite s) insLoopBody).1 = some .continue) ∧
        InsDoomed X (evaluateHOLFiniteState (decClockHOLFinite s) insLoopBody).2) := by
  obtain ⟨hs, ⟨g, hg, hg0⟩, S, N, hS, hN, hMSN, hfull⟩ := hd
  refine ⟨cond_of_go hg hg0, fun hgood => ?_⟩
  set M := s.memory
  have hall := (runLenG_eq_iff (width := 64) (quietB M) (nxt M) _ (S - 48)).mp hfull
  have hq0 : QuietP M (S - 48) := quietB_iff.mp (hall 0 (by omega))
  have hq1 : QuietP M (nxt M (S - 48)) := quietB_iff.mp (hall 1 (by omega))
  have hnxt : nxt M (S - 48) = N := nxt_of hMSN
  unfold QuietP at hq0
  rw [hnxt] at hq0 hq1
  obtain ⟨hN0, -, hM2, hM40, hz⟩ := hq0
  rw [show S - 48 + 48 = S by bv_omega] at hz
  -- the quiet body
  have hs' : InCtx (decClockHOLFinite s) X := hs
  have hquiet := ins_quiet (σ := σ) hC hinv hcpl hN0 hM2 hM40 (decClockHOLFinite s) hs'
    ⟨hN, rfl⟩ hgood
  obtain ⟨hr, hgo1⟩ := hquiet
  refine ⟨Or.inl hr, ?_⟩
  have hstep := ins_step (σ := σ) (X := X) hC (vn := s.locals.lookup (nm "node"))
    (vs := s.locals.lookup (nm "slot")) (vl := s.locals.lookup (nm "level"))
    (vk := s.locals.lookup (nm "klen")) (M := M) (decClockHOLFinite s) hs'
    ⟨⟨rfl, rfl, rfl, rfl⟩, rfl⟩ (by rw [hr]; trivial)
  generalize ht' : (evaluateHOLFiniteState (decClockHOLFinite s) insLoopBody).2 = t at hstep hgo1 ⊢
  rcases hstep with ⟨-, hp⟩ | ⟨v, hv⟩
  swap
  · rw [hr] at hv; cases hv
  rcases hp with hz' | hdp
  · rw [hz'] at hgo1
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hgo1
    exact absurd hgo1 (by decide)
  obtain ⟨N₁, S₁, Lv, K, off, pl, e1, e2, -, -, -, hgo', -, -, hsl', hn', hm', hcase⟩ := hdp
  rw [hN] at e1; rw [hS] at e2
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at e1 e2
  subst e1; subst e2
  obtain ⟨hoff, -, hM40', -⟩ : off = 48 ∧ M N = .word 2 ∧ M (N + 40) = .word pl ∧
      pl.toNat ≤ (K - Lv).toNat := by
    rcases hcase with ⟨_, _, h2⟩ | h
    · exact absurd hM2 h2
    · exact h
  subst hoff
  have hmem : t.memory = M := by rw [hm']; exact memAfter_eq hz fun _ => hMSN
  obtain ⟨hN'0, hM48, -, -, -⟩ := hq1
  refine ⟨?_, ⟨1, hgo', by decide⟩, N + 48, nxt M N, hsl', ?_, ?_, ?_⟩
  · rw [← ht']; exact inCtx_eval hs' _
  · rw [hn', zero3_48, hM48]
  · rw [hmem]; exact hM48
  · rw [hmem]
    unfold rho
    rw [show N + 48 - 48 = N by bv_omega, ← hnxt]
    exact runLenG_full_step _ _ _ hfull

end InitECandidate.Solver.Spec.Mpt
