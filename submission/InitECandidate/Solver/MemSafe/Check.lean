import InitECandidate.Solver.MemSafe.Model

/-!
# The store checker (prototype fragment) and its soundness

Abstract word values `AV`: `sc` (no information) or `gp t o` ("the base of a `Γ` object of
type `t`, plus byte offset `o`"). `aev E n e` evaluates an address expression abstractly
(globals by the global typing, locals by the abstract environment, `a + c`, and one-word
loads of pointer slots); `wordE` recognises expressions that evaluate to one word;
`stOK` is the store rule: the target is an 8-aligned slot of a typed object, `scalar`
(any word) or `ptr t'` (the value is `gp t' 0`); `prot` slots are rejected.

`chk E p` covers the fragment `skip | annot | tick | return | raise | seq | ite | st`.
`chk_sound`: a checked program, from a state satisfying `G` and the environment relation
`EnvOK`, ends (any result but error / time-out) in a state satisfying `G` — under *every*
ghost typing `Γ` — and keeps `EnvOK` on normal completion. Exceptions are covered, which
`run_frames` needs (it catches `EvmErr` from `op_dispatch` and continues).
-/

namespace InitECandidate.Solver.MemSafe.Proto
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

inductive AV where
  | sc
  | gp (t : Nat) (o : Nat)
  deriving DecidableEq, Repr

/-- Checker environment: type table, global typing, abstract locals, one-word locals. -/
structure Env where
  T : TyTab
  GT : List (MlS × Nat)
  L : List (MlS × AV)
  W : List MlS

/-- Abstract evaluation (fuel `n` bounds the expression depth). -/
def aev (E : Env) : Nat → ExpHOL 64 → AV
  | 0, _ => .sc
  | n + 1, e =>
    match e with
    | .var .global g =>
      match E.GT.lookup g with
      | some t => .gp t 0
      | none => .sc
    | .var .local x =>
      match E.L.lookup x with
      | some v => v
      | none => .sc
    | .op .add [a, .const c] =>
      match aev E n a with
      | .gp t o => .gp t (o + c.toNat)
      | .sc => .sc
    | .load .one a =>
      match aev E n a with
      | .gp t o =>
        match o % 8 with
        | 0 =>
          match (slots E.T t)[o / 8]? with
          | some (.ptr t') => .gp t' 0
          | _ => .sc
        | _ => .sc
      | .sc => .sc
    | _ => .sc

/-- Expressions that evaluate to one word. -/
def wordE (E : Env) : ExpHOL 64 → Bool
  | .const _ => true
  | .op _ _ => true
  | .cmp _ _ _ => true
  | .loadByte _ => true
  | .load .one _ => true
  | .var .local x => E.W.contains x
  | _ => false

/-- The store rule. -/
def stOK (E : Env) (a v : AV) : Bool :=
  match a with
  | .gp t o =>
    match o % 8 with
    | 0 =>
      match (slots E.T t)[o / 8]? with
      | some .scalar => true
      | some (.ptr t') =>
        match v with
        | .gp t'' 0 => t'' == t'
        | _ => false
      | _ => false
    | _ => false
  | .sc => false

def fuel : Nat := 16

/-- The checker on the prototype fragment. -/
def chk (E : Env) : ProgHOL 64 → Bool
  | .skip => true
  | .annot _ _ => true
  | .tick => true
  | .return _ => true
  | .raise _ _ => true
  | .seq a b => chk E a && chk E b
  | .ite _ a b => chk E a && chk E b
  | .store a e => wordE E e && stOK E (aev E fuel a) (aev E fuel e)
  | _ => false

section sound
variable {σ : Type}

/-- The abstract environment describes the locals. -/
def EnvOK (E : Env) (Γ : Gam) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  (∀ x t o, E.L.lookup x = some (.gp t o) →
    ∃ b, s.locals.lookup x = some (.val (.word (b + BitVec.ofNat 64 o))) ∧ (b, t) ∈ Γ) ∧
  (∀ x, E.W.contains x = true → ∃ w, s.locals.lookup x = some (.val (.word w)))

theorem ev_op_word {s : PanSemStateFiniteExact 64 σ} {o : BinOp} {es : List (ExpHOL 64)}
    {v : ValueHOL 64} (h : ev s (.op o es) = some v) : ∃ w, v = .val (.word w) := by
  simp only [ev, evalHOLExact] at h
  split at h
  · split at h
    · obtain ⟨w, -, rfl⟩ := Option.map_eq_some_iff.mp h
      exact ⟨w, rfl⟩
    · simp at h
  · simp at h

theorem val_word (x : HolWordLab 64) : ∃ w, x = .word w := by
  cases x with
  | word w => exact ⟨w, rfl⟩

theorem wordE_sound {E : Env} {Γ : Gam} {s : PanSemStateFiniteExact 64 σ} (hE : EnvOK E Γ s) :
    ∀ e v, wordE E e = true → ev s e = some v → ∃ w, v = .val (.word w)
  | .const c, v, _, h => ⟨c, by simp only [ev, evalHOLExact, Option.some.injEq] at h; exact h.symm⟩
  | .op _ _, _, _, h => ev_op_word h
  | .cmp _ _ _, _, _, h => by
      obtain ⟨_, _, _, _, rfl⟩ := ev_cmp_inv h
      exact ⟨_, rfl⟩
  | .loadByte _, _, _, h => by
      obtain ⟨w, rfl, -⟩ := ev_loadByte_word h
      exact ⟨w, rfl⟩
  | .load .one _, _, _, h => by
      obtain ⟨a, -, -, rfl⟩ := ev_load_one h
      obtain ⟨w, hw⟩ := val_word (s.memory a)
      exact ⟨w, by rw [hw]⟩
  | .var .local x, v, hw, h => by
      obtain ⟨w, hl⟩ := hE.2 x hw
      have h' : s.locals.lookup x = some v := h
      rw [hl] at h'
      exact ⟨w, (Option.some.inj h').symm⟩
  | .var .global _, _, hw, _ => by simp [wordE] at hw
  | .rstruct _, _, hw, _ => by simp [wordE] at hw
  | .rfield _ _, _, hw, _ => by simp [wordE] at hw
  | .nstruct _ _, _, hw, _ => by simp [wordE] at hw
  | .nfield _ _, _, hw, _ => by simp [wordE] at hw
  | .load (.comb _) _, _, hw, _ => by simp [wordE] at hw
  | .load (.named _) _, _, hw, _ => by simp [wordE] at hw
  | .load32 _, _, hw, _ => by simp [wordE] at hw
  | .panop _ _, _, hw, _ => by simp [wordE] at hw
  | .shift _ _ _, _, hw, _ => by simp [wordE] at hw
  | .baseAddr, _, hw, _ => by simp [wordE] at hw
  | .topAddr, _, hw, _ => by simp [wordE] at hw
  | .bytesInWord, _, hw, _ => by simp [wordE] at hw

theorem ofNat_add_toNat (b : BitVec 64) (o : Nat) (c : BitVec 64) :
    b + BitVec.ofNat 64 o + c = b + BitVec.ofNat 64 (o + c.toNat) := by
  rw [BitVec.add_assoc]
  congr 1
  apply BitVec.eq_of_toNat_eq
  simp [BitVec.toNat_add, Nat.add_mod]

/-- **Abstract evaluation is sound**: an address abstracted as `gp t o` evaluates to
`b + o` for an object `(b, t)` of `Γ`. -/
theorem aev_sound {E : Env} {Γ : Gam} {s : PanSemStateFiniteExact 64 σ}
    (hG : G E.T E.GT Γ s) (hE : EnvOK E Γ s) :
    ∀ n e t o, aev E n e = .gp t o → ∀ v, ev s e = some v →
      ∃ b, v = .val (.word (b + BitVec.ofNat 64 o)) ∧ (b, t) ∈ Γ := by
  intro n
  induction n with
  | zero => intro e t o h; simp [aev] at h
  | succ n ih =>
    intro e t o h v hv
    unfold aev at h
    split at h
    · -- global
      rename_i g
      split at h
      · rename_i t' ht
        cases h
        obtain ⟨b, hb, hm⟩ := hG.2.2 g t ht
        have hv' : s.globals.lookup g = some v := hv
        rw [hb] at hv'
        exact ⟨b, by rw [← Option.some.inj hv']; simp, hm⟩
      · cases h
    · -- local
      rename_i x
      split at h
      · rename_i v' hl
        subst h
        obtain ⟨b, hb, hm⟩ := hE.1 x t o hl
        have hv' : s.locals.lookup x = some v := hv
        rw [hb] at hv'
        exact ⟨b, (Option.some.inj hv').symm, hm⟩
      · cases h
    · -- a + c
      rename_i a c
      split at h
      · rename_i t' o' ha
        cases h
        obtain ⟨w, rfl⟩ := ev_op_word hv
        obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hv
        have hz' : z = c := by
          simp only [ev, evalHOLExact, Option.some.injEq, ValueHOL.val.injEq,
            HolWordLab.word.injEq] at hz
          exact hz.symm
        subst hz'
        obtain ⟨b, hb, hm⟩ := ih a t o' ha _ hy
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hb
        subst hb
        exact ⟨b, by rw [ofNat_add_toNat], hm⟩
      · cases h
    · -- one-word load of a pointer slot
      rename_i a
      split at h
      · rename_i t0 o' ha
        split at h
        · rename_i h8
          split at h
          · rename_i t' hslot
            cases h
            obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
            obtain ⟨b, hb, hm⟩ := ih a t0 o' ha _ hw
            simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hb
            subst hb
            have h88 : 8 * (o' / 8) = o' := by omega
            have hf := hG.2.1 _ hm (o' / 8) _ hslot
            rw [h88] at hf
            refine ⟨rd s.memory (b + BitVec.ofNat 64 o'), ?_, hf⟩
            obtain ⟨w, hw⟩ := val_word (s.memory (b + BitVec.ofNat 64 o'))
            rw [hw]
            simp [rd, hw]
          · cases h
        · cases h
      · cases h
    · cases h

/-- The checker's judgment: from `G` and `EnvOK`, every result but error / time-out ends
in `G`; normal completion also keeps `EnvOK`. -/
def Safe (σ : Type) (X : Ctx 64) (E : Env) (p : ProgHOL 64) : Prop :=
  ∀ (Γ : Gam) (s : PanSemStateFiniteExact 64 σ), InCtx s X → G E.T E.GT Γ s → EnvOK E Γ s →
    Good (evaluateHOLFiniteState s p).1 →
      G E.T E.GT Γ (evaluateHOLFiniteState s p).2 ∧
        ((evaluateHOLFiniteState s p).1 = none → EnvOK E Γ (evaluateHOLFiniteState s p).2)

variable {X : Ctx 64}

theorem envOK_of_locals {E : Env} {Γ : Gam} {s t : PanSemStateFiniteExact 64 σ}
    (hl : t.locals = s.locals) (h : EnvOK E Γ s) : EnvOK E Γ t :=
  ⟨fun x ty o hx => hl ▸ h.1 x ty o hx, fun x hx => hl ▸ h.2 x hx⟩

theorem safe_store {E : Env} {a e : ExpHOL 64}
    (hc : (wordE E e && stOK E (aev E fuel a) (aev E fuel e)) = true) :
    Safe σ X E (.store a e) := by
  simp only [Bool.and_eq_true] at hc
  obtain ⟨hwe, hst⟩ := hc
  intro Γ s _ hG hE hgood
  revert hgood
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.store a e)]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i v hv
      split
      · rename_i mem hmem
        intro _
        obtain ⟨x, rfl⟩ := wordE_sound hE e v hwe hv
        have hfl : flattenHOL (ValueHOL.val (HolWordLab.word x) : ValueHOL 64) =
            [HolWordLab.word x] := by simp [flattenHOL]
        rw [hfl] at hmem
        obtain ⟨-, rfl⟩ := stores_one hmem
        -- the address is a slot of a typed object
        unfold stOK at hst
        split at hst
        · rename_i t o ha
          split at hst
          · rename_i h8
            obtain ⟨b, hb, hm⟩ := aev_sound hG hE fuel a t o ha _ hw
            simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hb
            subst hb
            have h88 : 8 * (o / 8) = o := by omega
            split at hst
            · rename_i hslot
              have hk : o / 8 < (slots E.T t).length := (List.getElem?_eq_some_iff.mp hslot).1
              have hF := fields_store hG.1 hG.2.1 hm hk x (fun t' h' => by
                rw [hslot] at h'; cases h')
              rw [h88] at hF
              exact ⟨⟨hG.1, hF, fun g ty hl => hG.2.2 g ty hl⟩, fun _ => hE⟩
            · rename_i t' hslot
              split at hst
              · rename_i t'' hv0
                simp only [beq_iff_eq] at hst
                subst hst
                obtain ⟨b', hb', hm'⟩ := aev_sound hG hE fuel e t'' 0 hv0 _ hv
                simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hb'
                have hk : o / 8 < (slots E.T t).length := (List.getElem?_eq_some_iff.mp hslot).1
                have hF := fields_store hG.1 hG.2.1 hm hk x (fun t2 h' => by
                  rw [hslot] at h'
                  cases h'
                  rw [hb']
                  simpa using hm')
                rw [h88] at hF
                exact ⟨⟨hG.1, hF, fun g ty hl => hG.2.2 g ty hl⟩, fun _ => hE⟩
              · cases hst
            · cases hst
          · cases hst
        · cases hst
      · intro h; exact absurd rfl h.2
    · intro h; exact absurd rfl h.2
  · intro h; exact absurd rfl h.2

/-- **Soundness of the checker** (prototype fragment). -/
theorem chk_sound {E : Env} : ∀ p, chk E p = true → Safe σ X E p
  | .skip, _ => fun _ s _ hG hE _ => by
      rw [evaluateHOLFiniteState_skip]; exact ⟨hG, fun _ => hE⟩
  | .annot _ _, _ => fun _ s _ hG hE _ => by
      rw [evaluateHOLFiniteState_eq_evaluate_def]; exact ⟨hG, fun _ => hE⟩
  | .tick, _ => fun _ s _ hG hE hgood => by
      revert hgood
      rw [evaluateHOLFiniteState_tick]
      split
      · intro h; exact absurd rfl h.1
      · intro _
        exact ⟨G_of_eq rfl rfl hG, fun _ => envOK_of_locals rfl hE⟩
  | .return e, _ => fun _ s _ hG hE hgood => by
      revert hgood
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.return e)]
      dsimp only
      split
      · intro h; exact absurd rfl h.2
      · split
        · intro _
          exact ⟨G_of_eq rfl rfl hG, fun h => by cases h⟩
        · intro h; exact absurd rfl h.2
  | .raise x e, _ => fun _ s _ hG hE hgood => by
      revert hgood
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.raise x e)]
      dsimp only
      repeat' split
      all_goals first
        | (intro h; exact absurd rfl h.2)
        | (intro _; exact ⟨G_of_eq rfl rfl hG, fun h => by cases h⟩)
  | .seq a b, hc => by
      simp only [chk, Bool.and_eq_true] at hc
      have ha := chk_sound a hc.1
      have hb := chk_sound b hc.2
      intro Γ s hs hG hE hgood
      revert hgood
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
      dsimp only
      cases h1 : (evaluateHOLFiniteState s a).1 with
      | none =>
          intro hgood
          have ⟨hG1, hE1⟩ := ha Γ s hs hG hE (by rw [h1]; exact good_none)
          exact hb Γ _ (inCtx_eval hs a) hG1 (hE1 h1) hgood
      | some r =>
          intro hgood
          simp only [h1] at hgood ⊢
          have ⟨hG1, _⟩ := ha Γ s hs hG hE (by rw [h1]; exact hgood)
          exact ⟨hG1, fun h => by cases h⟩
  | .ite c a b, hc => by
      simp only [chk, Bool.and_eq_true] at hc
      have ha := chk_sound a hc.1
      have hb := chk_sound b hc.2
      intro Γ s hs hG hE hgood
      revert hgood
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
      dsimp only
      split
      · split
        · exact hb Γ s hs hG hE
        · exact ha Γ s hs hG hE
      · intro h; exact absurd rfl h.2
  | .store a e, hc => safe_store hc
  | .dec _ _ _ _, hc => by simp [chk] at hc
  | .assign _ _ _, hc => by simp [chk] at hc
  | .primitive _ _ _, hc => by simp [chk] at hc
  | .store32 _ _, hc => by simp [chk] at hc
  | .storeByte _ _, hc => by simp [chk] at hc
  | .while _ _, hc => by simp [chk] at hc
  | .break, hc => by simp [chk] at hc
  | .continue, hc => by simp [chk] at hc
  | .call _ _ _, hc => by simp [chk] at hc
  | .decCall _ _ _ _ _, hc => by simp [chk] at hc
  | .extCall _ _ _ _ _, hc => by simp [chk] at hc
  | .shMemLoad _ _ _ _, hc => by simp [chk] at hc
  | .shMemStore _ _ _, hc => by simp [chk] at hc

end sound

end InitECandidate.Solver.MemSafe.Proto
