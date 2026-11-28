import InitECandidate.Solver.Improvements.AcceptedExactWhileCost
import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop
import InitECandidate.Solver.MemSafe.Helpers.Mem
import InitECandidate.Solver.Spec.Inv.CostI
import InitECandidate.Solver.SourceCost.OrbitChecks
import InitECandidate.Solver.MemSafe.Entry

/-! A length-conditioned cost for the installed zero fill used by the
trie branch constructor. The four loops keep the byte count and only advance
the index when the whole next group fits. -/
set_option autoImplicit false
set_option maxRecDepth 100000
namespace FixedZero
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Helpers
variable {σ : Type}

private abbrev State := PanSemStateFiniteExact 64 σ

private def indexBound (s : State (σ := σ)) : Prop :=
  s.locals.lookup nN = some (.val (.word 176)) ∧
    ∃ i : BitVec 64, s.locals.lookup iN = some (.val (.word i)) ∧ i.toNat ≤ 176

private theorem block_zero (K : Nat) (stores : List (SK × Nat × ExpHOL 64)) :
    Cost σ guestCtx (blk dN iN K stores) 0 := by
  induction stores with
  | nil => exact cost_assign _ _ _
  | cons cell rest ih =>
    rcases cell with ⟨kind, off, val⟩
    cases kind with
    | w => exact cost_seq (Bp := 0) (Bq := 0) (cost_store _ _) ih
    | b => exact cost_seq (Bp := 0) (Bq := 0) (cost_storeByte _ _) ih

private theorem guardSized {s : State (σ := σ)} {i : BitVec 64} {K : Nat}
    (hK : K ≤ 32) (hiN : i.toNat ≤ 176)
    (hn : s.locals.lookup nN = some (.val (.word 176)))
    (hi : s.locals.lookup iN = some (.val (.word i)))
    (hc : CondTrue s (geK nN iN K)) : i.toNat + K ≤ 176 := by
  obtain ⟨w, hw, hne⟩ := hc
  change ev s (geK nN iN K) = _ at hw
  unfold geK at hw
  rw [ev_cmp (ev_lw hn) (ev_add2 (ev_lw hi) (ev_cw _ _))] at hw
  have hkNat : (BitVec.ofNat 64 K).toNat = K := by
    simp only [BitVec.toNat_ofNat, Nat.reducePow]
    exact Nat.mod_eq_of_lt (by omega)
  have hsum : (i + BitVec.ofNat 64 K).toNat = i.toNat + K := by
    rw [BitVec.toNat_add, hkNat]
    exact Nat.mod_eq_of_lt (by omega)
  by_contra h
  have hf : wordCmpHOL .notLower (176 : BitVec 64) (i + BitVec.ofNat 64 K) = false := by
    simp only [wordCmpHOL, Bool.not_eq_false', decide_eq_true_eq, BitVec.lt_def]
    rw [hsum]
    change 176 < i.toNat + K
    omega
  rw [hf] at hw
  exact hne (by simpa using hw.symm)

private theorem guardByte {s : State (σ := σ)} {i : BitVec 64}
    (hn : s.locals.lookup nN = some (.val (.word 176)))
    (hi : s.locals.lookup iN = some (.val (.word i)))
    (hc : CondTrue s (ltN iN nN)) : i.toNat + 1 ≤ 176 := by
  obtain ⟨w, hw, hne⟩ := hc
  change ev s (ltN iN nN) = _ at hw
  unfold ltN at hw
  rw [ev_cmp (ev_lw hi) (ev_lw hn)] at hw
  by_contra h
  have hf : wordCmpHOL .lower i (176 : BitVec 64) = false := by
    simp only [wordCmpHOL, decide_eq_false_iff_not]
    change ¬ i.toNat < 176
    omega
  rw [hf] at hw
  exact hne (by simpa using hw.symm)

private theorem loop {K : Nat} {guard : ExpHOL 64} {stores : List (SK × Nat × ExpHOL 64)}
    (hK : 0 < K) (hMax : K ≤ 32)
    (hstep : Steps σ iN (· + BitVec.ofNat 64 K) (blk dN iN K stores))
    (hnox : NoExit σ (blk dN iN K stores))
    (hkeep : Keeps σ nN (blk dN iN K stores))
    (hguard : ∀ s : State (σ := σ), ∀ i : BitVec 64, indexBound s →
      s.locals.lookup iN = some (.val (.word i)) → CondTrue s guard → i.toNat + K ≤ 176) :
    Inv.CostP σ guestCtx indexBound (.while guard (blk dN iN K stores)) 176 ∧
    Hoare σ guestCtx indexBound (.while guard (blk dN iN K stores))
      (fun _ t => indexBound t) := by
  let body := blk dN iN K stores
  let rank : State (σ := σ) → Nat := fun s => 176 - wordOf s iN
  have hstart {s : State (σ := σ)} (hs : indexBound s) (hc : CondTrue s guard) :
      ∃ i : BitVec 64, s.locals.lookup iN = some (.val (.word i)) ∧ i.toNat + K ≤ 176 := by
    obtain ⟨hn, i, hi, hle⟩ := hs
    exact ⟨i, hi, hguard s i ⟨hn, i, hi, hle⟩ hi hc⟩
  have hnext {i : BitVec 64} (hi : i.toNat + K ≤ 176) :
      (i + BitVec.ofNat 64 K).toNat = i.toNat + K := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := K) (by omega)]
    exact Nat.mod_eq_of_lt (by omega)
  have hinv : Hoare σ guestCtx (fun s => indexBound s ∧ CondTrue s guard) body
      (fun r t => r = none ∨ r = some .continue → indexBound t) := by
    intro s hs hp hg hr
    obtain ⟨i, hi, hle⟩ := hstart hp.1 hp.2
    refine ⟨(hkeep s (hr.imp id Or.inl)).trans hp.1.1, i + BitVec.ofNat 64 K, hstep s i hi hr, ?_⟩
    rw [hnext hle]
    exact hle
  refine ⟨?_, ?_⟩
  · change Inv.CostP σ guestCtx indexBound (.while guard body) (176 * (0 + 1))
    refine AcceptedExactWhileCost.costP_while_exact rank 176 (fun _ h => h) (fun _ => rfl)
      (Inv.costP_of_cost (block_zero K stores)) hinv (fun s _ _ _ => Nat.sub_le _ _) ?_ ?_
    · intro s _ hs hc
      obtain ⟨i, hi, hle⟩ := hstart hs hc
      change 0 < 176 - wordOf s iN
      simp only [wordOf, hi]
      omega
    · intro k s _ ⟨hs, hc, hRank⟩ _ hr
      obtain ⟨i, hi, hle⟩ := hstart hs hc
      have hi' := hstep s i hi hr
      simp only [rank, wordOf, hi] at hRank
      change 176 - wordOf (evaluateHOLFiniteState s (blk dN iN K stores)).2 iN < k
      simp only [wordOf, hi', hnext hle]
      omega
  · refine InitECandidate.Solver.Spec.hoare_while
      (I := indexBound) (c := guard) (body := body) (Q := fun _ t => indexBound t)
      (fun s h => h) ?_ ?_
    · intro s hs hp hg
      have hb := hinv s hs hp hg
      refine ⟨fun h => hb (Or.inl h), fun h => hb (Or.inr h), ?_, ?_⟩
      · intro h
        have hx := hnox s (by rw [h]; simp [Good])
        change (evaluateHOLFiniteState s body).1 = none ∨
          (evaluateHOLFiniteState s body).1 = some .continue at hx
        rw [h] at hx
        simp at hx
      · intro v h
        have hx := hnox s (by rw [h]; simp [Good])
        change (evaluateHOLFiniteState s body).1 = none ∨
          (evaluateHOLFiniteState s body).1 = some .continue at hx
        rw [h] at hx
        simp at hx
    · intro s _ hs _
      exact hs

private theorem wrap_loop {K : Nat} {guard : ExpHOL 64} {stores : List (SK × Nat × ExpHOL 64)}
    (hK : 0 < K) (hMax : K ≤ 32)
    (hstep : stepsWithB iN (isAddK iN (BitVec.ofNat 64 K)) (blk dN iN K stores) = true)
    (hnox : onlyExitsB false (blk dN iN K stores) = true)
    (hkeep : keepsB nN (blk dN iN K stores) = true)
    (hguard : ∀ s : State (σ := σ), ∀ i : BitVec 64, indexBound s →
      s.locals.lookup iN = some (.val (.word i)) → CondTrue s guard → i.toNat + K ≤ 176) :
    Inv.CostI σ guestCtx indexBound (.while guard (blk dN iN K stores)) 176 :=
  loop hK hMax (stepsWithB_sound isAddK_sound _ hstep)
    (noExit_of_onlyExits (onlyExitsB_sound _ _ hnox)) (keepsB_sound _ _ hkeep) hguard

private theorem sized {K : Nat} {stores : List (SK × Nat × ExpHOL 64)}
    (hK : 0 < K) (hMax : K ≤ 32)
    (hstep : stepsWithB iN (isAddK iN (BitVec.ofNat 64 K)) (blk dN iN K stores) = true)
    (hnox : onlyExitsB false (blk dN iN K stores) = true)
    (hkeep : keepsB nN (blk dN iN K stores) = true) :
    Inv.CostI σ guestCtx indexBound (.while (geK nN iN K) (blk dN iN K stores)) 176 :=
  wrap_loop hK hMax hstep hnox hkeep (by
    intro s i ⟨hn, j, hj, hle⟩ hi hc
    rw [hi] at hj
    cases hj
    exact guardSized hMax hle hn hi hc)

private theorem byte :
    Inv.CostI σ guestCtx indexBound (.while (ltN iN nN) (blk dN iN 1 (zL .b [0]))) 176 :=
  wrap_loop (by decide) (by decide) (by decide) (by decide) (by decide)
    (fun s i hs hi hc => guardByte hs.1 hi hc)

private theorem alignChoice {c : ExpHOL 64} {a : ProgHOL 64} {B : Nat}
    (h : Inv.CostI σ guestCtx indexBound a B) :
    Inv.CostI σ guestCtx indexBound (.ite c a .skip) B := by
  refine ⟨?_, InitECandidate.Solver.Spec.hoare_ite
    (hoare_pre h.2 (fun _ _ h' => h'.1))
    (InitECandidate.Solver.Spec.hoare_skip (fun _ _ h' => h'.1))⟩
  simpa only [Nat.max_zero] using Inv.costP_ite
    (h.1.pre (fun _ _ h' => h'.1)) (Inv.costP_of_cost (P := fun s => indexBound s ∧
      ev s c = some (.val (.word 0))) (cost_skip (σ := σ) (X := guestCtx)))

theorem bodyCost :
    Inv.CostP σ guestCtx (fun s => s.locals.lookup nN = some (.val (.word 176))) memzeroBody 704 := by
  unfold memzeroBody memSkel
  have halign := alignChoice (σ := σ) (c := .cmp .equal (.op .and [lv dN, cw 7]) (cw 0))
    (Inv.costI_seq (sized (σ := σ) (K := 32) (stores := zL .w [0, 8, 16, 24])
        (by decide) (by decide) (by decide) (by decide) (by decide))
      (sized (K := 8) (stores := zL .w [0]) (by decide) (by decide) (by decide) (by decide) (by decide)))
  have hbyteReturn := Inv.costP_seq (R := indexBound) (byte (σ := σ)).1
    (hoare_post (byte (σ := σ)).2 (fun _ _ _ _ h _ => h))
    (Inv.costP_of_cost (cost_return (cw 0)))
  have hbyte8 := sized (σ := σ) (K := 8) (stores := zL .b [0, 1, 2, 3, 4, 5, 6, 7])
    (by decide) (by decide) (by decide) (by decide) (by decide)
  have htail := Inv.costP_seq hbyte8.1
    (hoare_post hbyte8.2 (fun _ _ _ _ h _ => h)) hbyteReturn
  refine Inv.costP_dec (fun s _ hn v hv _ => ?_)
  rw [ev_cw] at hv
  cases hv
  exact (Inv.costP_seq halign.1 (hoare_post halign.2 (fun _ _ _ _ h _ => h)) htail).pre (by
    intro t _ ht
    subst t
    exact ⟨by rw [lk_set_ne _ _ (by decide : iN ≠ nN), hn],
      0, by simp [setVarHOLFinite, FUPDATE], by decide⟩)

def fixedInputs (values : List (ValueHOL 64)) (_ : State (σ := σ)) : Prop :=
  ∃ d : ValueHOL 64, values = [d, .val (.word 176)]

theorem calleeCost : Inv.CalleeCostP σ guestCtx (nm "memzero") fixedInputs 704 := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, _, _, hargs⟩ := InitECandidate.Solver.MemSafe.lookupCode_gen code_memzero hl
  refine bodyCost.pre ?_
  rintro s hs ⟨hloc, d, rfl⟩
  rw [hloc]
  exact (hargs 1 (by decide) (by simp)).1

#print axioms calleeCost
end FixedZero
