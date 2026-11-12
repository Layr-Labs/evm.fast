import InitECandidate.Solver.Spec.Fq12.MemFp

/-!
# How the degree moves in one division step

After one iteration of the division loop at degree `D` (`D ≠ -1`) the new degree `D'`
(`DegFacts`) satisfies:

* `deg_same_of_frame`: if no byte cell of the buffer changed, `D' = D`;
* `deg_drop`: if the coefficients above `D` kept their byte views and coefficient `D` is
  now byte-zero, `degM D' < degM D`;
* `deg_stay`: if they kept their byte views and coefficient `D` is not byte-zero, `D' = D`.

Also the arithmetic link `grel_K` from two Montgomery steps to the `doom_step` form, and the
signed loop conditions of `fq12_inv`.
-/

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

theorem deg_same_of_frame {s t : PanSemStateFiniteExact 64 σ} {a D D' : BitVec 64}
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hm : ∀ k i : BitVec 64, k.toNat < 13 → i.toNat < 32 →
      t.memory (ba (a + k * 32 + i)) = s.memory (ba (a + k * 32 + i)))
    (hD : DegFacts s a D) (hD' : DegFacts t a D') : D' = D := by
  have hf : ∀ k : BitVec 64, k.toNat < 13 → ∀ i : BitVec 64, i.toNat < 32 →
      t.memory (ba (a + k * 32 + i)) = s.memory (ba (a + k * 32 + i)) :=
    fun k hk i hi => hm k i hk hi
  have h2 : DegFacts t a D := by
    rcases hD with ⟨h1, h2⟩ | ⟨h1, h2, h3⟩
    · exact Or.inl ⟨h1, fun k hk => slotZ_frame' hd hbe (hf k hk) (h2 k hk)⟩
    · exact Or.inr ⟨h1, slotNZ_frame' hd hbe (hf D h1) h2,
        fun k hk1 hk2 => slotZ_frame' hd hbe (hf k hk2) (h3 k hk1 hk2)⟩
  exact degFacts_unique hD' h2

theorem degM_of_ne {D : BitVec 64} (h : D ≠ 0 - 1) : degM D = D.toNat + 1 := by
  unfold degM; rw [if_neg h]

theorem deg_drop {s t : PanSemStateFiniteExact 64 σ} {a D D' : BitVec 64} (hDn : D ≠ 0 - 1)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hm : ∀ k i : BitVec 64, D.toNat < k.toNat → k.toNat < 13 → i.toNat < 32 →
      t.memory (ba (a + k * 32 + i)) = s.memory (ba (a + k * 32 + i)))
    (hD : DegFacts s a D) (hz : SlotZ t a D) (hD' : DegFacts t a D') : degM D' < degM D := by
  rcases hD with ⟨h1, -⟩ | ⟨h1, -, h3⟩
  · exact absurd h1 hDn
  rw [degM_of_ne hDn]
  have habove : ∀ k : BitVec 64, D.toNat < k.toNat → k.toNat < 13 → SlotZ t a k :=
    fun k hk1 hk2 => slotZ_frame' hd hbe (fun i hi => hm k i hk1 hk2 hi) (h3 k hk1 hk2)
  rcases hD' with ⟨rfl, -⟩ | ⟨h1', h2', -⟩
  · simp [degM]
  · have hne : D' ≠ 0 - 1 := by
      intro he; rw [he, m1_toNat] at h1'; omega
    rw [degM_of_ne hne]
    rcases Nat.lt_trichotomy D'.toNat D.toNat with hlt | heq | hgt
    · omega
    · have : D' = D := BitVec.eq_of_toNat_eq heq
      subst this
      exact absurd h2' (slotZ_not_NZ hz)
    · exact absurd h2' (slotZ_not_NZ (habove D' hgt h1'))

theorem deg_stay {s t : PanSemStateFiniteExact 64 σ} {a D D' : BitVec 64} (hDn : D ≠ 0 - 1)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hm : ∀ k i : BitVec 64, D.toNat < k.toNat → k.toNat < 13 → i.toNat < 32 →
      t.memory (ba (a + k * 32 + i)) = s.memory (ba (a + k * 32 + i)))
    (hD : DegFacts s a D) (hnz : ¬ SlotZ t a D) (hD' : DegFacts t a D') : D' = D := by
  rcases hD with ⟨h1, -⟩ | ⟨h1, -, h3⟩
  · exact absurd h1 hDn
  have habove : ∀ k : BitVec 64, D.toNat < k.toNat → k.toNat < 13 → SlotZ t a k :=
    fun k hk1 hk2 => slotZ_frame' hd hbe (fun i hi => hm k i hk1 hk2 hi) (h3 k hk1 hk2)
  rcases hD' with ⟨rfl, hz'⟩ | ⟨h1', h2', h3'⟩
  · exact absurd (hz' D h1) hnz
  · rcases Nat.lt_trichotomy D'.toNat D.toNat with hlt | heq | hgt
    · exact absurd (h3' D hlt h1) hnz
    · exact BitVec.eq_of_toNat_eq heq
    · exact absurd h2' (slotZ_not_NZ (habove D' hgt h1'))

/-! ## Arithmetic -/

/-- Two Montgomery steps compose to the form of `doom_step`. -/
theorem grel_K {t CF U LI B : Nat} (h1 : (CF * 2 ^ 256) % fqP = (t * LI) % fqP)
    (h2 : (U * 2 ^ 256) % fqP = (CF * B) % fqP) :
    (U * 2 ^ 512) % fqP = (t * (LI * B)) % fqP := by
  have e : U * 2 ^ 512 = (U * 2 ^ 256) * 2 ^ 256 := by rw [Nat.mul_assoc, ← Nat.pow_add]
  rw [e, Nat.mul_mod, h2, ← Nat.mul_mod, Nat.mul_right_comm, Nat.mul_mod, h1, ← Nat.mul_mod,
    Nat.mul_assoc]

/-- The relation of one division step on the top coefficient. -/
def GRel (LI B t g : Nat) : Prop :=
  ∃ CF U, CF < fqP ∧ (CF * 2 ^ 256) % fqP = (t * LI) % fqP ∧ U < fqP ∧
    (U * 2 ^ 256) % fqP = (CF * B) % fqP ∧ g = fqSubN t U

/-- **Doom, on the step relation.** A top coefficient that does not cancel never cancels. -/
theorem grel_doom {LI B t g g' : Nat} (h1 : GRel LI B t g) (h2 : GRel LI B g g') (hg : g ≠ 0) :
    g' ≠ 0 := by
  obtain ⟨CF, U, -, hc, hU, hu, rfl⟩ := h1
  obtain ⟨CF', U', -, hc', hU', hu', rfl⟩ := h2
  exact doom_step 512 (LI * B) t U _ U' hU hU' (grel_K hc hu) (grel_K hc' hu') rfl hg

/-! ## Signed comparisons of degrees -/

theorem signed_lt_iff {x y : BitVec 64} (hx : x.toNat < 2 ^ 63) (hy : y.toNat < 2 ^ 63) :
    Flapjack.Compiler.Encoders.Asm.holAsmSignedLess x y = decide (x.toNat < y.toNat) := by
  unfold Flapjack.Compiler.Encoders.Asm.holAsmSignedLess
  simp only [show 64 - 1 = 63 from rfl, if_pos hx, if_pos hy]

theorem signed_m1_lt {y : BitVec 64} (hy : y.toNat < 2 ^ 63) :
    Flapjack.Compiler.Encoders.Asm.holAsmSignedLess (0 - 1) y = true := by
  unfold Flapjack.Compiler.Encoders.Asm.holAsmSignedLess
  rw [m1_toNat]
  simp only [show 64 - 1 = 63 from rfl]
  rw [if_neg (by omega), if_pos hy]

end InitECandidate.Solver.Spec.Fq12
