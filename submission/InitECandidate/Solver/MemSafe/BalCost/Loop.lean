import InitECandidate.Solver.SourceCost.Checkers
import InitECandidate.Solver.Spec.Inv.CostI
import InitECandidate.Solver.MemSafe.BalEnc.BblDefs
import InitECandidate.Solver.MemSafe.BalEnc.KeysO
import InitECandidate.Solver.MemSafe.BalCost.Analyzer

set_option maxRecDepth 100000
set_option cbv.maxSteps 4000000000
set_option autoImplicit false
set_option maxHeartbeats 0

open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Inv

/-- Scratch helper: the caller must establish and preserve the invariant and
show every true guard exposes an incrementing counter below M. -/
theorem while_inc_costP_bounded {σ : Type} {X : Ctx 64}
    {I : PanSemStateFiniteExact 64 σ → Prop} {c : ExpHOL 64}
    {body : ProgHOL 64} {i : MlS} {B M : Nat}
    (hM : M < 2 ^ 64)
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hb : Cost σ X body B) (hstep : Steps σ i (· + 1) body)
    (hinv : Hoare σ X (fun s => I s ∧ CondTrue s c) body
      (fun r t => r = none ∨ r = some .continue → I t))
    (hguard : ∀ s, InCtx s X → I s → CondTrue s c →
      ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v.toNat < M) :
    InitECandidate.Solver.Spec.Inv.CostP σ X I (.while c body) ((M + 1) * (B + 1)) := by
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun s => M - wordOf s i
  refine InitECandidate.Solver.Spec.Inv.costP_while μ M hclk (fun s => rfl) (InitECandidate.Solver.Spec.Inv.costP_of_cost hb) hinv
    (fun s _ _ _ => Nat.sub_le _ _) ?_
  intro k s hs ⟨hi, hc, hk⟩ ht hexit
  obtain ⟨v, hv, hvM⟩ := hguard s hs hi hc
  have hafter := hstep s v hv hexit
  have hone : (1 : BitVec 64).toNat = 1 := by decide
  have hinc : (v + 1).toNat = v.toNat + 1 := by
    simp only [BitVec.toNat_add, hone, Nat.reducePow]
    exact Nat.mod_eq_of_lt (by omega)
  change M - wordOf s i = k at hk
  simp only [wordOf, hv] at hk
  change M - wordOf (evaluateHOLFiniteState s body).2 i < k
  simp only [wordOf, hafter]
  rw [hinc]
  omega

#print axioms while_inc_costP_bounded

open Flapjack.Compiler.Encoders.Asm

/-- A captured expression value and a counter still in its nonnegative range. -/
def FixedLimitInv {σ : Type} (i : MlS) (E : ExpHOL 64) (C : BitVec 64)
    (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ev s E = some (.val (.word C)) ∧
    ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v.toNat ≤ C.toNat

theorem cond_less_known_words {σ : Type} {s : PanSemStateFiniteExact 64 σ}
    {i : MlS} {E : ExpHOL 64} {v C : BitVec 64}
    (hv : s.locals.lookup i = some (.val (.word v)))
    (he : ev s E = some (.val (.word C)))
    (hc : CondTrue s (.cmp .less (.var .local i) E)) :
    wordCmpHOL .less v C = true := by
  obtain ⟨w, hw, hne⟩ := hc
  change ev s (.cmp .less (.var .local i) E) = some (.val (.word w)) at hw
  have hvi : ev s (.var .local i) = some (.val (.word v)) := hv
  rw [ev_cmp hvi he] at hw
  cases hcmp : wordCmpHOL .less v C with
  | false =>
      have hz : w = 0 := by simpa [hcmp] using hw.symm
      exact False.elim (hne hz)
  | true => rfl

/-- A bounded signed comparison with a captured limit; stability of the limit
expression is explicit and can be supplied by a local-frame checker. -/
theorem fixed_limit_while_costP {σ : Type} {X : Ctx 64}
    {i : MlS} {E : ExpHOL 64} {C : BitVec 64} {body : ProgHOL 64} {B : Nat}
    (hC : C.toNat < 2 ^ 63) (hb : Cost σ X body B)
    (hstep : Steps σ i (· + 1) body)
    (hEclk : ∀ s : PanSemStateFiniteExact 64 σ, ev (decClockHOLFinite s) E = ev s E)
    (hEkeep : ∀ s : PanSemStateFiniteExact 64 σ, LoopExit (evaluateHOLFiniteState s body).1 →
      ev (evaluateHOLFiniteState s body).2 E = ev s E) :
    InitECandidate.Solver.Spec.Inv.CostP σ X (FixedLimitInv i E C) (.while (.cmp .less (.var .local i) E) body)
      ((C.toNat + 1) * (B + 1)) := by
  have guard : ∀ s : PanSemStateFiniteExact 64 σ, FixedLimitInv i E C s →
      CondTrue s (.cmp .less (.var .local i) E) →
      ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v.toNat < C.toNat := by
    intro s ⟨he, v, hv, hvC⟩ hc
    have hs : v.toNat < 9223372036854775808 := by omega
    have cmp := cond_less_known_words hv he hc
    have hlt : v.toNat < C.toNat := by
      have hCN : C.toNat < 9223372036854775808 := hC
      simpa [wordCmpHOL, holAsmSignedLess, hs, hCN] using cmp
    exact ⟨v, hv, hlt⟩
  refine while_inc_costP_bounded (by omega : C.toNat < 2 ^ 64) ?_ hb hstep ?_
    (fun s _ hi hc => guard s hi hc)
  · intro s ⟨he, v, hv, hvC⟩
    exact ⟨(hEclk s).trans he, v, hv, hvC⟩
  · intro s hs hi ht hexit
    obtain ⟨v, hv, hvC⟩ := guard s hi.1 hi.2
    have hafter := hstep s v hv hexit
    have hloopexit : LoopExit (evaluateHOLFiniteState s body).1 :=
      hexit.elim Or.inl (fun h => Or.inr (Or.inl h))
    have hone : (1 : BitVec 64).toNat = 1 := by decide
    have hinc : (v + 1).toNat = v.toNat + 1 := by
      simp only [BitVec.toNat_add, hone, Nat.reducePow]
      exact Nat.mod_eq_of_lt (by omega)
    refine ⟨(hEkeep s hloopexit).trans hi.1.1, v + 1, hafter, ?_⟩
    rw [hinc]
    omega

#print axioms fixed_limit_while_costP

/-- A captured signed limit, with a small invariant bound on the counter. -/
def CapturedCountInv {σ : Type} (i : MlS) (E : ExpHOL 64) (C : BitVec 64) (M : Nat)
    (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ev s E = some (.val (.word C)) ∧
    ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v.toNat ≤ M

theorem conditional_limit_while_costP {σ : Type} {X : Ctx 64}
    {i : MlS} {E : ExpHOL 64} {C : BitVec 64} {body : ProgHOL 64} {B M : Nat}
    (hM : M < 2 ^ 63) (hC : C.toNat < 2 ^ 63 → C.toNat ≤ M) (hb : Cost σ X body B)
    (hstep : Steps σ i (· + 1) body)
    (hEclk : ∀ s : PanSemStateFiniteExact 64 σ, ev (decClockHOLFinite s) E = ev s E)
    (hEkeep : ∀ s : PanSemStateFiniteExact 64 σ, LoopExit (evaluateHOLFiniteState s body).1 →
      ev (evaluateHOLFiniteState s body).2 E = ev s E) :
    InitECandidate.Solver.Spec.Inv.CostP σ X (CapturedCountInv i E C M) (.while (.cmp .less (.var .local i) E) body)
      ((M + 1) * (B + 1)) := by
  have guard : ∀ s : PanSemStateFiniteExact 64 σ, CapturedCountInv i E C M s →
      CondTrue s (.cmp .less (.var .local i) E) →
      ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v.toNat < M := by
    intro s ⟨he, v, hv, hvC⟩ hc
    have hs : v.toNat < 9223372036854775808 := by omega
    have cmp := cond_less_known_words hv he hc
    by_cases hcpos : C.toNat < 9223372036854775808
    · have hlt : v.toNat < C.toNat := by
        simpa [wordCmpHOL, holAsmSignedLess, hs, hcpos] using cmp
      have hcm := hC hcpos
      exact ⟨v, hv, by omega⟩
    · simp [wordCmpHOL, holAsmSignedLess, hs, hcpos] at cmp
  refine while_inc_costP_bounded (by omega : M < 2 ^ 64) ?_ hb hstep ?_
    (fun s _ hi hc => guard s hi hc)
  · intro s ⟨he, v, hv, hvC⟩
    exact ⟨(hEclk s).trans he, v, hv, hvC⟩
  · intro s hs hi ht hexit
    obtain ⟨v, hv, hvC⟩ := guard s hi.1 hi.2
    have hafter := hstep s v hv hexit
    have hloopexit : LoopExit (evaluateHOLFiniteState s body).1 :=
      hexit.elim Or.inl (fun h => Or.inr (Or.inl h))
    have hone : (1 : BitVec 64).toNat = 1 := by decide
    have hinc : (v + 1).toNat = v.toNat + 1 := by
      simp only [BitVec.toNat_add, hone, Nat.reducePow]
      exact Nat.mod_eq_of_lt (by omega)
    refine ⟨(hEkeep s hloopexit).trans hi.1.1, v + 1, hafter, ?_⟩
    rw [hinc]
    omega


#print axioms conditional_limit_while_costP

open InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.BalEnc

namespace InitECandidate.Solver.MemSafe.BalCost.Loop

def encBody : ProgHOL 64 := match encLoop with
  | .while _ b => b
  | _ => .skip

theorem size_steps {σ : Type} : Steps σ cI (· + 1) sizeBody :=
  stepsB_sound cI true sizeBody (by decide +kernel)

theorem size_keeps {σ : Type} : Keeps σ cAddrs sizeBody :=
  keepsB_sound cAddrs sizeBody (by decide +kernel)

theorem enc_steps {σ : Type} : Steps σ cI (· + 1) encBody :=
  stepsB_sound cI true encBody (by decide +kernel)

theorem enc_keeps {σ : Type} : Keeps σ cAddrs encBody :=
  keepsB_sound cAddrs encBody (by decide +kernel)

def sizeB : Nat := (InitECandidate.Solver.MemSafe.BalCost.Analyzer.costFin sizeBody).getD 0
def encB : Nat := (InitECandidate.Solver.MemSafe.BalCost.Analyzer.costFin encBody).getD 0

theorem cost_size {σ : Type} : Cost σ guestCtx sizeBody sizeB := by
  have hs : (InitECandidate.Solver.MemSafe.BalCost.Analyzer.costFin sizeBody).isSome = true := by decide_cbv
  obtain ⟨B, hB⟩ := Option.isSome_iff_exists.mp hs
  simpa [sizeB, hB] using (InitECandidate.Solver.MemSafe.BalCost.Analyzer.cost_guest_costA (σ := σ) hB)

theorem cost_enc {σ : Type} : Cost σ guestCtx encBody encB := by
  have hs : (InitECandidate.Solver.MemSafe.BalCost.Analyzer.costFin encBody).isSome = true := by decide_cbv
  obtain ⟨B, hB⟩ := Option.isSome_iff_exists.mp hs
  simpa [encB, hB] using (InitECandidate.Solver.MemSafe.BalCost.Analyzer.cost_guest_costA (σ := σ) hB)

theorem ev_field_congr {σ : Type} {s t : PanSemStateFiniteExact 64 σ}
    {j : MlS} {f : Nat} (h : t.locals.lookup j = s.locals.lookup j) :
    ev t (.rfield f (.var .local j)) = ev s (.rfield f (.var .local j)) := by
  simp only [ev, evalHOLExact, h]

#print axioms cost_size
#print axioms cost_enc

def countE : ExpHOL 64 := .rfield 1 (.var .local cAddrs)

theorem size_loop_cost {σ : Type} {C : BitVec 64} {M : Nat}
    (hM : M < 2 ^ 63) (hC : C.toNat < 2 ^ 63 → C.toNat ≤ M) :
    InitECandidate.Solver.Spec.Inv.CostP σ guestCtx (CapturedCountInv cI countE C M)
      (.while (.cmp .less (.var .local cI) countE) sizeBody) ((M + 1) * (sizeB + 1)) :=
  conditional_limit_while_costP hM hC cost_size size_steps (fun _ => rfl)
    (fun s he => ev_field_congr (size_keeps s he))

theorem enc_loop_cost {σ : Type} {C : BitVec 64} {M : Nat}
    (hM : M < 2 ^ 63) (hC : C.toNat < 2 ^ 63 → C.toNat ≤ M) :
    InitECandidate.Solver.Spec.Inv.CostP σ guestCtx (CapturedCountInv cI countE C M)
      encLoop ((M + 1) * (encB + 1)) := by
  change InitECandidate.Solver.Spec.Inv.CostP σ guestCtx (CapturedCountInv cI countE C M)
    (.while (.cmp .less (.var .local cI) countE) encBody) ((M + 1) * (encB + 1))
  exact conditional_limit_while_costP hM hC cost_enc enc_steps (fun _ => rfl)
    (fun s he => ev_field_congr (enc_keeps s he))

#print axioms size_loop_cost
#print axioms enc_loop_cost


/-- Heap allocation alone gives a useful conditional key-count bound at stride>=24. -/
theorem keys_post_count24 {vs : List (ValueHOL 64)} {p : Ptrs}
    {S0 : BitVec 64} {v : ValueHOL 64} (hp : p.Ordered)
    (hstride : 24 ≤ S0.toNat) (hpost : Aw.HkPost2 S0 vs p v) :
    ∃ O N : BitVec 64, v = .rStruct [.val (.word O), .val (.word N)] ∧
      (N.toNat < 2 ^ 63 → N.toNat ≤ 10485759) := by
  obtain ⟨O, N, hv, hO, hOhi, hsize⟩ := hpost
  refine ⟨O, N, hv, ?_⟩
  intro hN
  have hmul := Nat.mul_le_mul_left N.toNat hstride
  have hb := (hsize hN).2
  have hbase : InitECandidate.Solver.MemSafe.heapBase ≤ p.hp := hp.1
  change 2701131776 ≤ p.hp at hbase
  change O.toNat + N.toNat * S0.toNat + 8 ≤ 2952790016 at hb
  omega

/-- A20-byte-key table's aligned stride is at least24 bytes. -/
theorem table_stride24 {σ : Type} {s : PanSemStateFiniteExact 64 σ} {T : BitVec 64}
    (hwf : TableWF s T) (hkey : hdr s.memory T 0 = BitVec.ofNat 64 20) :
    24 ≤ (hdr s.memory T 8).toNat := by
  rcases hwf.1 with ⟨ht, hn, ho, hk, hs, hkl, hrest⟩
  rw [hkey] at hkl
  change 20 ≤ (hdr s.memory T 8).toNat at hkl
  omega

#print axioms keys_post_count24
#print axioms table_stride24

end InitECandidate.Solver.MemSafe.BalCost.Loop
