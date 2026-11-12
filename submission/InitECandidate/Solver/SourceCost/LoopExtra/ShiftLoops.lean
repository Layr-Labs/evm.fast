import InitECandidate.Solver.SourceCost.OrbitShapes

/-!
# Loops bounded through shift semantics

* `while (X << d) <+ n { d = d + 1 }` (`ceil_log2`): a shift by a local amount `d`
  evaluates only when `d < width` (`wordShiftHOL` fails otherwise), so a true
  condition bounds the counter and `d + 1` never wraps.
* `while v != 0 { v = v >>> k; ... }` (`rlp_be_len`): a nonzero logical right shift
  strictly decreases a nonzero word. The shift may also go through a temporary,
  `while cur > 1 { var half = cur >>> 1; ...; cur = half; }` (`merkleize`), and any
  comparison of the counter with a constant that is false at `0` forces it nonzero.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-! ## Shift amounts -/

/-- A shift whose amount is local `d` evaluates only when `d` holds a word below
`width`. -/
theorem shift_amt_lt {s : PanSemStateFiniteExact width σ} {op : Shift} {x : ExpHOL width}
    {d : MlS} {v : ValueHOL width}
    (h : @evalHOLFinite width σ _ s (fun a => Classical.propDecidable (s.memaddrs a))
      (.shift op x (.var .local d)) = some v) :
    ∃ w : BitVec width, s.locals.lookup d = some (.val (.word w)) ∧ w.toNat < width := by
  simp only [evalHOLFinite, evalHOLExact] at h
  split at h
  · rename_i l r hl hr
    refine ⟨r, hr, ?_⟩
    have hpos : 0 < width := Nat.pos_of_ne_zero (NeZero.ne width)
    unfold wordShiftHOL at h
    split at h
    · simp at h
    · rename_i hn
      omega
  · simp at h

/-- The left operand of a successful comparison evaluates. -/
theorem cmp_left_some {s : PanSemStateFiniteExact width σ} {op : Cmp} {a b : ExpHOL width}
    {v : ValueHOL width}
    (h : @evalHOLFinite width σ _ s (fun x => Classical.propDecidable (s.memaddrs x))
      (.cmp op a b) = some v) :
    ∃ u, @evalHOLFinite width σ _ s (fun x => Classical.propDecidable (s.memaddrs x)) a =
      some u := by
  simp only [evalHOLFinite, evalHOLExact] at h
  split at h
  · rename_i l r hl hr
    exact ⟨_, hl⟩
  · simp at h

theorem cmp_right_some {s : PanSemStateFiniteExact width σ} {op : Cmp} {a b : ExpHOL width}
    {v : ValueHOL width}
    (h : @evalHOLFinite width σ _ s (fun x => Classical.propDecidable (s.memaddrs x))
      (.cmp op a b) = some v) :
    ∃ u, @evalHOLFinite width σ _ s (fun x => Classical.propDecidable (s.memaddrs x)) b =
      some u := by
  simp only [evalHOLFinite, evalHOLExact] at h
  split at h
  · rename_i l r hl hr
    exact ⟨_, hr⟩
  · simp at h

/-- The local used as a shift amount on either side of a comparison. -/
def cmpShiftAmt : ExpHOL width → Option MlS
  | .cmp _ (.shift _ _ (.var .local d)) _ => some d
  | .cmp _ _ (.shift _ _ (.var .local d)) => some d
  | _ => none

theorem cmpShiftAmt_sound {c : ExpHOL width} {d : MlS} (hc : cmpShiftAmt c = some d)
    {s : PanSemStateFiniteExact width σ} (h : CondTrue s c) :
    ∃ w : BitVec width, s.locals.lookup d = some (.val (.word w)) ∧ w.toNat < width := by
  obtain ⟨w, hw, -⟩ := h
  unfold cmpShiftAmt at hc
  split at hc
  · simp only [Option.some.injEq] at hc
    subst hc
    obtain ⟨u, hu⟩ := cmp_left_some hw
    exact shift_amt_lt hu
  · simp only [Option.some.injEq] at hc
    subst hc
    obtain ⟨u, hu⟩ := cmp_right_some hw
    exact shift_amt_lt hu
  · simp at hc

/-- `while (... (X << d) ...) { ... d = d + 1 ... }`: the condition bounds `d` below
`width`, so the increment never wraps. -/
theorem cost_while_shiftAmt_inc {c : ExpHOL width} {d : MlS} {body : ProgHOL width} {B : Nat}
    (hc : cmpShiftAmt c = some d) (hb : Cost σ X body B) (hs : Steps σ d (· + 1) body) :
    Cost σ X (.while c body) ((2 ^ width + 1) * (B + 1)) := by
  refine cost_while (fun s => 2 ^ width - wordOf s d) (2 ^ width) hb
    (fun s _ _ => Nat.sub_le _ _) ?_
  intro s _ hcond _ hexit
  obtain ⟨v, hv, hlt⟩ := cmpShiftAmt_sound hc hcond
  have hv' : (decClockHOLFinite s).locals.lookup d = some (.val (.word v)) := hv
  have hafter := hs _ v hv' hexit
  show 2 ^ width - wordOf _ d < 2 ^ width - wordOf s d
  unfold wordOf
  rw [hafter, hv]
  have hwp : width < 2 ^ width := Nat.lt_two_pow_self
  have hpow : 1 < 2 ^ width := Nat.one_lt_two_pow (NeZero.ne width)
  have hv1 : (v + 1).toNat = v.toNat + 1 := by
    have h1 : (1 : BitVec width).toNat = 1 := by
      simp [Nat.mod_eq_of_lt hpow]
    rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
  simp only [hv1]
  omega

/-! ## Logical right shift by a constant -/

theorem steps_shr_const (i : MlS) (k : BitVec width) :
    Steps σ i (fun v => v >>> k.toNat)
      (.assign .local i (.shift .lsr (.var .local i) (.const k)) : ProgHOL width) := by
  intro s v hv hexit
  revert hexit
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  by_cases hk : k.toNat ≠ 0 ∧ width ≤ k.toNat
  · simp [evalHOLExact, hv, wordShiftHOL, hk]
  · simp [evalHOLExact, hv, wordShiftHOL, hk, isValidValueHOLFinite, lookupKvarHOLFinite,
      setKvarHOLFinite, shapeOfHOLExact, shapeEqHOL, setVarHOLFinite, FUPDATE]

/-- Recognise `i = i >>> k`. -/
def isShrK (i : MlS) (k : BitVec width) : ExpHOL width → Bool
  | .shift .lsr (.var .local j) (.const c) => decide (j = i) && decide (c = k)
  | _ => false

theorem isShrK_sound {i : MlS} {k : BitVec width} :
    ∀ e, isShrK i k e = true → Steps σ i (fun v => v >>> k.toNat) (.assign .local i e) := by
  intro e h
  unfold isShrK at h
  split at h
  · simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨rfl, rfl⟩ := h
    exact steps_shr_const _ _
  · simp at h

omit [NeZero width] in
theorem shr_toNat_lt {v : BitVec width} {n : Nat} (hv : v ≠ 0) (hn : n ≠ 0) :
    (v >>> n).toNat < v.toNat := by
  rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]
  have hvn : v.toNat ≠ 0 := fun h => hv (BitVec.eq_of_toNat_eq (by simpa using h))
  have h2 : 1 < 2 ^ n := Nat.one_lt_two_pow hn
  exact Nat.div_lt_self (Nat.pos_of_ne_zero hvn) h2

/-- Countdown by logical right shift: a condition forcing `i ≠ 0` and a body that
shifts `i` right by a nonzero constant once. -/
theorem cost_while_shr {i : MlS} {c : ExpHOL width} {body : ProgHOL width} {B : Nat}
    {k : BitVec width} (hk : k ≠ 0)
    (hc : NonzeroCond σ i c) (hb : Cost σ X body B) (hs : Steps σ i (fun v => v >>> k.toNat) body) :
    Cost σ X (.while c body) ((2 ^ width + 1) * (B + 1)) := by
  refine cost_while (fun s => wordOf s i) (2 ^ width) hb (fun s _ _ => wordOf_le s i) ?_
  intro s _ hcond _ hexit
  obtain ⟨v, hv, hv0⟩ := hc s hcond
  have hv' : (decClockHOLFinite s).locals.lookup i = some (.val (.word v)) := hv
  have hafter := hs _ v hv' hexit
  show wordOf _ i < wordOf s i
  unfold wordOf
  rw [hafter, hv]
  have hkn : k.toNat ≠ 0 := fun h => hk (BitVec.eq_of_toNat_eq (by simpa using h))
  exact shr_toNat_lt hv0 hkn

/-! ## Counter copied back from a temporary

`StepsT σ i t p`: whenever `p` completes normally or by `continue` from a state where
local `t` holds word `w`, it ends with `i = w` (the shape `i = t` on the body spine). -/

def StepsT (σ : Type) (i t : MlS) (p : ProgHOL width) : Prop :=
  ∀ (s : PanSemStateFiniteExact width σ) (w : BitVec width),
    s.locals.lookup t = some (.val (.word w)) →
    ((evaluateHOLFiniteState s p).1 = none ∨ (evaluateHOLFiniteState s p).1 = some .continue) →
    (evaluateHOLFiniteState s p).2.locals.lookup i = some (.val (.word w))

theorem stepsT_copy (i t : MlS) :
    StepsT σ i t (.assign .local i (.var .local t) : ProgHOL width) := by
  intro s w hw hexit
  revert hexit
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  simp only [evalHOLExact, hw]
  split
  · intro _
    simp [setKvarHOLFinite, setVarHOLFinite, FUPDATE]
  · intro h; simp at h

theorem stepsT_seq_left {i t : MlS} {a b : ProgHOL width}
    (ha : StepsT σ i t a) (hb : Keeps σ i b) : StepsT σ i t (.seq a b) := by
  intro s v hv
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      intro hexit
      rcases hexit with h | h
      · rw [hb _ (Or.inl h)]; exact ha s v hv (Or.inl h1)
      · rw [hb _ (Or.inr (Or.inl h))]; exact ha s v hv (Or.inl h1)
  | some r =>
      intro hexit
      dsimp only at hexit ⊢
      exact ha s v hv hexit

theorem stepsT_seq_right {i t : MlS} {a b : ProgHOL width}
    (ha : Keeps σ t a) (hc : NoCont σ a) (hb : StepsT σ i t b) : StepsT σ i t (.seq a b) := by
  intro s v hv
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      intro hexit
      exact hb _ v (by rw [ha s (Or.inl h1)]; exact hv) hexit
  | some r =>
      intro hexit
      dsimp only at hexit
      rcases hexit with h | h
      · first | (rw [h1] at h; cases h) | cases h
      · first | exact absurd h (hc s) | exact absurd (h1.trans h) (hc s)

theorem stepsT_dec {i t n : MlS} {sh : ShapeHOL} {e : ExpHOL width} {b : ProgHOL width}
    (hni : n ≠ i) (hnt : n ≠ t) (hb : StepsT σ i t b) : StepsT σ i t (.dec n sh e b) := by
  intro s v hv
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
  dsimp only
  split
  · intro h; simp at h
  · split
    · intro hexit
      simp only [lookup_resVarEq_restore, if_neg (Ne.symm hni)]
      exact hb _ v (by simp [setVarHOLFinite, FUPDATE, hnt, hv]) hexit
    · intro h; simp at h

def stepsTB (i t : MlS) : ProgHOL width → Bool
  | .assign .local j (.var .local t') => decide (j = i) && decide (t' = t)
  | .seq a b => (stepsTB i t a && keepsB i b) || (keepsB t a && noContB a && stepsTB i t b)
  | .dec n _ _ b => decide (n ≠ i) && decide (n ≠ t) && stepsTB i t b
  | _ => false

theorem stepsTB_sound (i t : MlS) :
    ∀ p : ProgHOL width, stepsTB i t p = true → StepsT σ i t p
  | .assign .local j (.var .local t'), h => by
      simp only [stepsTB, Bool.and_eq_true, decide_eq_true_eq] at h
      obtain ⟨rfl, rfl⟩ := h
      exact stepsT_copy _ _
  | .seq a b, h => by
      simp only [stepsTB, Bool.or_eq_true, Bool.and_eq_true] at h
      rcases h with ⟨ha, hb⟩ | ⟨⟨ha, hc⟩, hb⟩
      · exact stepsT_seq_left (stepsTB_sound i t a ha) (keepsB_sound i b hb)
      · exact stepsT_seq_right (keepsB_sound t a ha) (noContB_sound a hc) (stepsTB_sound i t b hb)
  | .dec n _ _ b, h => by
      simp only [stepsTB, Bool.and_eq_true, decide_eq_true_eq] at h
      exact stepsT_dec h.1.1 h.1.2 (stepsTB_sound i t b h.2)
  | .assign .local _ (.const _), h | .assign .local _ (.var .global _), h
  | .assign .local _ (.rstruct _), h | .assign .local _ (.rfield _ _), h
  | .assign .local _ (.nstruct _ _), h | .assign .local _ (.nfield _ _), h
  | .assign .local _ (.load _ _), h | .assign .local _ (.load32 _), h
  | .assign .local _ (.loadByte _), h | .assign .local _ (.op _ _), h
  | .assign .local _ (.panop _ _), h | .assign .local _ (.cmp _ _ _), h
  | .assign .local _ (.shift _ _ _), h | .assign .local _ .baseAddr, h
  | .assign .local _ .topAddr, h | .assign .local _ .bytesInWord, h => by simp [stepsTB] at h
  | .assign .global _ _, h => by simp [stepsTB] at h
  | .skip, h | .break, h | .continue, h | .annot _ _, h | .tick, h => by simp [stepsTB] at h
  | .primitive _ _ _, h | .store _ _, h | .store32 _ _, h | .storeByte _ _, h => by
      simp [stepsTB] at h
  | .extCall _ _ _ _ _, h | .raise _ _, h | .return _, h => by simp [stepsTB] at h
  | .shMemLoad _ _ _ _, h | .shMemStore _ _ _, h | .ite _ _ _, h | .while _ _, h => by
      simp [stepsTB] at h
  | .call _ _ _, h | .decCall _ _ _ _ _, h => by simp [stepsTB] at h

/-- `dec t = i >>> k in body` where `body` copies `t` back into `i`. -/
theorem steps_dec_shr {i t : MlS} {k : BitVec width} {sh : ShapeHOL} {b : ProgHOL width}
    (hti : t ≠ i) (hb : StepsT σ i t b) :
    Steps σ i (fun v => v >>> k.toNat)
      (.dec t sh (.shift .lsr (.var .local i) (.const k)) b) := by
  intro s v hv
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec t sh _ b)]
  dsimp only
  split
  · intro h; simp at h
  · rename_i value hval
    simp only [evalHOLExact, hv] at hval
    unfold wordShiftHOL at hval
    split at hval
    · simp at hval
    · simp only [Option.map_some, Option.some.injEq] at hval
      subst hval
      split
      · intro hexit
        simp only [lookup_resVarEq_restore, if_neg (Ne.symm hti)]
        exact hb _ _ (by simp [setVarHOLFinite, FUPDATE]) hexit
      · intro h; simp at h

/-- Steps checker for `i = i >>> k`, directly or through a temporary. -/
def stepsShrB (i : MlS) (k : BitVec width) : ProgHOL width → Bool
  | .assign .local j e => decide (j = i) && isShrK i k e
  | .dec t _ e b =>
      (decide (t ≠ i) && isShrK i k e && stepsTB i t b) || (decide (t ≠ i) && stepsShrB i k b)
  | .seq a b => (stepsShrB i k a && keepsB i b) || (keepsB i a && noContB a && stepsShrB i k b)
  | .decCall rn _ _ _ b => decide (rn ≠ i) && stepsShrB i k b
  | _ => false

theorem stepsShrB_sound (i : MlS) (k : BitVec width) :
    ∀ p : ProgHOL width, stepsShrB i k p = true → Steps σ i (fun v => v >>> k.toNat) p
  | .assign .local j e, h => by
      simp only [stepsShrB, Bool.and_eq_true, decide_eq_true_eq] at h
      obtain ⟨rfl, h⟩ := h
      exact isShrK_sound e h
  | .dec t _ e b, h => by
      simp only [stepsShrB, Bool.or_eq_true, Bool.and_eq_true, decide_eq_true_eq] at h
      rcases h with ⟨⟨hti, he⟩, hb⟩ | ⟨hti, hb⟩
      · unfold isShrK at he
        split at he
        · simp only [Bool.and_eq_true, decide_eq_true_eq] at he
          obtain ⟨hj, hc⟩ := he
          rw [hj, hc]
          exact steps_dec_shr hti (stepsTB_sound i t b hb)
        · simp at he
      · exact steps_dec hti (stepsShrB_sound i k b hb)
  | .seq a b, h => by
      simp only [stepsShrB, Bool.or_eq_true, Bool.and_eq_true] at h
      rcases h with ⟨ha, hb⟩ | ⟨⟨ha, hc⟩, hb⟩
      · exact steps_seq_left (stepsShrB_sound i k a ha) (keepsB_sound i b hb)
      · exact steps_seq_right (keepsB_sound i a ha) (noContB_sound a hc) (stepsShrB_sound i k b hb)
  | .decCall rn _ _ _ b, h => by
      simp only [stepsShrB, Bool.and_eq_true, decide_eq_true_eq] at h
      exact steps_decCall h.1 (stepsShrB_sound i k b h.2)
  | .assign .global _ _, h => by simp [stepsShrB] at h
  | .skip, h | .break, h | .continue, h | .annot _ _, h | .tick, h => by simp [stepsShrB] at h
  | .primitive _ _ _, h | .store _ _, h | .store32 _ _, h | .storeByte _ _, h => by
      simp [stepsShrB] at h
  | .extCall _ _ _ _ _, h | .raise _ _, h | .return _, h => by simp [stepsShrB] at h
  | .shMemLoad _ _ _ _, h | .shMemStore _ _ _, h | .ite _ _ _, h | .while _ _, h => by
      simp [stepsShrB] at h
  | .call _ _ _, h => by simp [stepsShrB] at h

/-- Propose the shift constant of `i` (untrusted; `stepsShrB` re-checks it). -/
def findShrK (i : MlS) : ProgHOL width → Option (BitVec width)
  | .assign .local j (.shift .lsr (.var .local j') (.const c)) =>
      if j = i ∧ j' = i then some c else none
  | .dec _ _ (.shift .lsr (.var .local j) (.const c)) b =>
      if j = i then some c else findShrK i b
  | .seq a b => (findShrK i a).or (findShrK i b)
  | .dec _ _ _ b => findShrK i b
  | .decCall _ _ _ _ b => findShrK i b
  | _ => none

/-! ## Conditions forcing a local to be nonzero -/

/-- Constant on the left. -/
theorem condConstLeft_iff (s : PanSemStateFiniteExact width σ) (op : Flapjack.Cmp) (i : MlS)
    (z : BitVec width) :
    CondTrue s (.cmp op (.const z) (.var .local i)) ↔
      ∃ v, s.locals.lookup i = some (.val (.word v)) ∧
        Compiler.Encoders.Asm.wordCmpHOL op z v = true := by
  rw [condTrue_iff_eval]
  simp only [evalHOLFinite, evalHOLExact]
  cases hi : s.locals.lookup i with
  | none => simp
  | some vi =>
    rcases vi with ⟨⟨v⟩⟩ | _ | _ <;> simp [NeZero.ne width]

/-- A comparison of a local with a constant that is false at `0` forces the local to
be a nonzero word. -/
def nonzeroVar : ExpHOL width → Option MlS
  | .cmp op (.const z) (.var .local i) =>
      if Compiler.Encoders.Asm.wordCmpHOL op z 0 = false then some i else none
  | .cmp op (.var .local i) (.const z) =>
      if Compiler.Encoders.Asm.wordCmpHOL op 0 z = false then some i else none
  | _ => none

theorem nonzeroVar_sound {c : ExpHOL width} {i : MlS} (h : nonzeroVar c = some i) :
    NonzeroCond σ i c := by
  unfold nonzeroVar at h
  split at h
  · rename_i op z j
    split at h
    · rename_i hz
      simp only [Option.some.injEq] at h
      subst h
      intro s hs
      obtain ⟨v, hv, hc⟩ := (condConstLeft_iff s op _ z).mp hs
      refine ⟨v, hv, ?_⟩
      rintro rfl
      rw [hz] at hc
      cases hc
    · simp at h
  · rename_i op j z
    split at h
    · rename_i hz
      simp only [Option.some.injEq] at h
      subst h
      intro s hs
      obtain ⟨v, hv, hc⟩ := (condB2_iff s op _ z).mp hs
      refine ⟨v, hv, ?_⟩
      rintro rfl
      rw [hz] at hc
      cases hc
    · simp at h
  · simp at h

def loopOkShr (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  match nonzeroVar c with
  | some i =>
      match findShrK i b with
      | some k => decide (k ≠ 0) && stepsShrB i k b
      | none => false
  | none => false

theorem loopOkShr_sound {c : ExpHOL width} {b : ProgHOL width} {B : Nat}
    (h : loopOkShr c b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOkShr at h
  split at h
  · rename_i i hi
    split at h
    · rename_i k _
      simp only [Bool.and_eq_true, decide_eq_true_eq] at h
      exact cost_while_shr h.1 (nonzeroVar_sound hi) hb (stepsShrB_sound i k b h.2)
    · simp at h
  · simp at h

def loopOkShiftAmt (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  match cmpShiftAmt c with
  | some d => stepsB d true b
  | none => false

theorem loopOkShiftAmt_sound {c : ExpHOL width} {b : ProgHOL width} {B : Nat}
    (h : loopOkShiftAmt c b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOkShiftAmt at h
  split at h
  · rename_i d hd
    exact cost_while_shiftAmt_inc hd hb (stepsB_sound d true b h)
  · simp at h

end InitECandidate.Solver.SourceCost
