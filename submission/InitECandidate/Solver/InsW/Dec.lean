import InitECandidate.Solver.InsW.Phi

/-!
# The decrease of the windowed insertion measure

`insMuW` is the accepted `insMu` with `phi` replaced by the window count `phiW` and an invariant
bounding the remaining key length `klen - level` by `64`. The proof is the accepted `ins_dec`
(`Spec/Mpt/InsertCost.lean`) with the window facts added: a descending iteration only zeroes
`N + 8`, `N + 16`, `N + 24` for a node `N` it loaded, so the changes lie in the window.
-/

set_option autoImplicit false
set_option maxHeartbeats 8000000
set_option maxRecDepth 100000

namespace InitECandidate.Solver.InsW
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.Spec.Mpt

variable {σ : Type} {X : Ctx 64}

open Classical in
noncomputable def insMuW (lo : BitVec 64) (Lw : Nat) (s : PanSemStateFiniteExact 64 σ) : Nat :=
  if wl s go_ = 0 then 0 else if NZ s then
    2 + ((wl s (nm "klen") - wl s (nm "level")).toNat + phiW lo Lw s.memory) * Wt +
      (if Chi0 s then 0 else 1) * (2 ^ 64 + 2) + rho s.memory (wl s (nm "slot"))
  else 1

def insMbW (Lw : Nat) : Nat := 2 + (64 + Lw) * Wt + (2 ^ 64 + 2) + (2 ^ 64 + 1)

def InsIW (s : PanSemStateFiniteExact 64 σ) : Prop :=
  InsI s ∧ (wl s go_ ≠ 0 → (wl s (nm "klen") - wl s (nm "level")).toNat ≤ 64)

theorem ins_decW (hC : X.code.lookup = guestCode) {lo : BitVec 64} {L : Nat}
    (hdom : DomIn X.memaddrs lo L) (hL : L + 64 < 2 ^ 64) (k : Nat) :
    Hoare σ X (fun s => InsIW s ∧ ¬ InsDoomed X s ∧ CondTrue s goCond ∧ insMuW lo (L + 64) s = k) insLoopBody
      (fun r t => r = none ∨ r = some .continue → InsIW t ∧ insMuW lo (L + 64) t < k) := by
  classical
  intro s hs ⟨⟨hI, hA0⟩, hnd, hc, hk⟩ ht hexit
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
    have h0 : wl t go_ = 0 := by rw [wl_of hz]
    refine ⟨⟨Or.inl hz, fun h => absurd h0 h⟩, ?_⟩
    have hk1 : 1 ≤ k := by rw [← hk]; unfold insMuW; rw [if_neg hgo]; split <;> omega
    unfold insMuW; rw [if_pos h0]; omega
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
  have hwk0 : wl s (nm "klen") = K := wl_of e4
  have hwl0 : wl s (nm "level") = Lv := wl_of e3
  have hA : (K - (Lv + pl)).toNat + pl.toNat = (K - Lv).toNat ∧
      (pl = 1 → (K - Lv).toNat ≠ 0 ∨ Lv ≠ K) := by
    rcases hcase with ⟨hLK, rfl, -⟩ | ⟨-, -, -, hpl⟩
    · refine ⟨?_, fun _ => Or.inr hLK⟩
      have : K - Lv ≠ 0 := fun e => hLK (by bv_omega)
      bv_omega
    · refine ⟨?_, fun _ => ?_⟩
      · bv_omega
      · left; bv_omega
  refine ⟨⟨hIt, fun _ => ?_⟩, ?_⟩
  · rw [wl_of hk', wl_of hl']
    have := hA0 hgo
    rw [hwk0, hwl0] at this
    omega
  -- the measure of the start
  have hNZs : NZ s := ⟨N, e1, hN⟩
  have hwk : wl s (nm "klen") = K := wl_of e4
  have hwl : wl s (nm "level") = Lv := wl_of e3
  have hks : k = 2 + ((K - Lv).toNat + phiW lo (L + 64) s.memory) * Wt +
      (if Chi0 s then 0 else 1) * (2 ^ 64 + 2) + rho s.memory (wl s (nm "slot")) := by
    rw [← hk]; unfold insMuW; rw [if_neg hgo, if_pos hNZs, hwk, hwl]
  have hgo1' : wl t go_ ≠ 0 := by rw [wl_of hgo1]; decide
  by_cases hNZt : NZ t
  swap
  · unfold insMuW; rw [if_neg hgo1', if_neg hNZt]; omega
  have hkt : insMuW lo (L + 64) t = 2 + ((K - (Lv + pl)).toNat + phiW lo (L + 64) t.memory) * Wt +
      (if Chi0 t then 0 else 1) * (2 ^ 64 + 2) + rho t.memory (N + off) := by
    unfold insMuW; rw [if_neg hgo1', if_pos hNZt, wl_of hk', wl_of hl', wl_of hsl']
  rw [hkt, hks]
  -- `A` and `phi`
  have hNhit : X.memaddrs N := hoare_node_hit (σ := σ) (X := X) hN s hs e1 ht
  have hNoff : (N - lo).toNat < L := hdom N hNhit
  obtain ⟨hphi, hphiEq⟩ := phiW_mono (lo := lo) (Lw := L + 64) (fun a ha => by
    obtain ⟨h0, hloc⟩ := memAfter_change_at hMS a ha
    refine ⟨h0, ?_⟩
    have hoff : ∀ c : Nat, c ≤ 24 → (N + BitVec.ofNat 64 c - lo).toNat = (N - lo).toNat + c := by
      intro c hc
      rw [add_sub_comm', BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := c) (by omega),
        Nat.mod_eq_of_lt (by omega)]
    rcases hloc with rfl | rfl | rfl
    · have := hoff 8 (by omega); first | omega | (simp only [BitVec.ofNat_eq_ofNat] at this; omega) | exact (by rw [show (N + 8 : BitVec 64) = N + BitVec.ofNat 64 8 from rfl, this]; omega)
    · have := hoff 16 (by omega); first | omega | (simp only [BitVec.ofNat_eq_ofNat] at this; omega) | exact (by rw [show (N + 16 : BitVec 64) = N + BitVec.ofNat 64 16 from rfl, this]; omega)
    · have := hoff 24 (by omega); first | omega | (simp only [BitVec.ofNat_eq_ofNat] at this; omega) | exact (by rw [show (N + 24 : BitVec 64) = N + BitVec.ofNat 64 24 from rfl, this]; omega))
  rw [← hm'] at hphi hphiEq
  have hR' : rho t.memory (N + off) ≤ 2 ^ 64 + 1 := runLenG_le _ _ _ _
  have h01 : (if Chi0 t then 0 else 1) ≤ 1 := by split <;> omega
  have hchi' := Nat.mul_le_mul_right (2 ^ 64 + 2) h01
  rw [Nat.one_mul] at hchi'
  by_cases hlt : (K - (Lv + pl)).toNat + phiW lo (L + 64) t.memory < (K - Lv).toNat + phiW lo (L + 64) s.memory
  · have hmul : ((K - (Lv + pl)).toNat + phiW lo (L + 64) t.memory) * Wt + Wt ≤
        ((K - Lv).toNat + phiW lo (L + 64) s.memory) * Wt := by
      rw [← Nat.succ_mul]; exact Nat.mul_le_mul_right _ hlt
    unfold Wt at hmul ⊢
    omega
  -- equal: an extension step with an empty segment, memory unchanged
  have hplz : pl.toNat = 0 := by omega
  have hphi' : phiW lo (L + 64) t.memory = phiW lo (L + 64) s.memory := by omega
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


end InitECandidate.Solver.InsW
