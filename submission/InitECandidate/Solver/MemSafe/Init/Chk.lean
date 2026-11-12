import InitECandidate.Solver.MemSafe.Init.Mark

/-!
# Init: the init-body checker and its soundness

`ichk S T tail pn p = some pn'`: an abstract run of the init body `p` from the pending list `pn` to `pn'`. Allowed:
`g = alloc(n)` for a typed pointer global of a scalar block type of size `n` (`pn' = pnDel pn g`), the guards
`if g != 0 { return e }` and `if g == 0 { a }` on a pending `g`, a call of an init function of the table `T` at exactly the
pending list it was proved for, a `return` in tail position, `var x = e; k`, sequences, and any chunk that writes no global and
does not escape (`gwNoneB S`, `escFreeB`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

abbrev ITab := List (MlS × List MlS × List MlS)

def allocOKB (g : MlS) (w : BitVec 64) : Bool :=
  match guestC.GT.lookup g with
  | some (.ptr t) => BTys.contains t && decide ((guestC.ty t).minSz = w.toNat) && decide (w.toNat % 8 = 0) &&
      decide (0 < w.toNat)
  | _ => false

theorem allocOKB_spec {g : MlS} {w : BitVec 64} (h : allocOKB g w = true) :
    ∃ t, guestC.GT.lookup g = some (.ptr t) ∧ t ∈ BTys ∧ (guestC.ty t).minSz = w.toNat ∧ w.toNat % 8 = 0 ∧
      0 < w.toNat := by
  unfold allocOKB at h
  split at h
  · rename_i t ht
    simp only [Bool.and_eq_true, decide_eq_true_eq, List.contains_iff_mem] at h
    obtain ⟨⟨⟨h1, h2⟩, h3⟩, h4⟩ := h
    exact ⟨t, ht, h1, h2, h3, h4⟩
  · simp at h

def chunkB (S : List MlS) (pn : List MlS) (p : ProgHOL 64) : Option (List MlS) :=
  if gwNoneB S p && escFreeB p then some pn else none

def guardB (g : MlS) (c : BitVec 64) (pn : List MlS) : Bool :=
  (guestC.GT.lookup g).isSome && pn.contains g && decide (c = 0)

def ichk (S : List MlS) (T : ITab) : Nat → Bool → List MlS → ProgHOL 64 → Option (List MlS)
  | 0, _, _, _ => none
  | n+1, tail, pn, .seq a b => (ichk S T n false pn a).bind fun pn1 => ichk S T n tail pn1 b
  | n+1, tail, pn, .dec _ _ _ b => ichk S T n tail pn b
  | n+1, tail, pn, .return _ => if tail then some pn else none
  | n+1, tail, pn, .ite (.cmp .notEqual (.var .global g) (.const c)) (.return _) .skip =>
      if guardB g c pn then some pn else none
  | n+1, tail, pn, .ite (.cmp .equal (.var .global g) (.const c)) a .skip =>
      if guardB g c pn then ichk S T n false pn a else none
  | n+1, tail, pn, .call (some (some (.global, g), none)) f [e] =>
      match argVal e with
      | some w => if f == nm "alloc" && allocOKB g w then some (pnDel pn g) else none
      | none => none
  | n+1, tail, pn, .call (some (none, none)) f args =>
      match T.find? (fun e => e.1 == f) with
      | some e => if e.2.1 == pn && args.isEmpty then some e.2.2 else none
      | none => chunkB S pn (.call (some (none, none)) f args)
  | n+1, tail, pn, .decCall m _ f1 [] (.decCall s1 _ f2 [e] X) =>
      match argVal e, splitSt X with
      | some _, some (_, fr, m', rest) =>
          if f1 == nm "heap_mark" && f2 == nm "alloc" && fr == nm "heap_release" && m == m' && m != s1
          then ichk S T n tail pn rest else none
      | _, _ => none
  | n+1, tail, pn, p => chunkB S pn p

/-- The spec of an init function: from `pi` pending, a returning run ends with `po` pending. -/
def InitFS (σ : Type) (f : MlS) (pi po : List MlS) : Prop :=
  FunSpec σ guestCtx f (fun vs s r t => Good (some r) → ∀ v, r = .returned v →
    ∀ Γ, WI Γ pi s → ∃ Γ', WI Γ' po t)

def ISound (σ : Type) (tail : Bool) (pn pn' : List MlS) (p : ProgHOL 64) : Prop :=
  Hoare σ guestCtx (fun s => ∃ Γ, WI Γ pn s) p (fun r t => (tail = false → r = none) ∧ ∃ Γ, WI Γ pn' t)

theorem isound_conseq {tail : Bool} {pn pn' : List MlS} {p : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : Hoare σ guestCtx (fun s => ∃ Γ, WI Γ pn s) p
      (fun r t => (tail = false → r = none) ∧ ∃ Γ, WI Γ pn' t)) :
    ISound σ tail pn pn' p := h

theorem guardB_spec {g : MlS} {c : BitVec 64} {pn : List MlS} (h : guardB g c pn = true) :
    (∃ k, guestC.GT.lookup g = some k) ∧ g ∈ pn ∧ c = 0 := by
  simp only [guardB, Bool.and_eq_true, decide_eq_true_eq, List.contains_iff_mem, Option.isSome_iff_exists] at h
  obtain ⟨⟨⟨k, hk⟩, hm⟩, hc⟩ := h
  exact ⟨⟨k, hk⟩, hm, hc⟩

theorem chunkB_sound {S : List MlS} (hS : GwNoneClosed S guestCode) {tail : Bool} {pn pn' : List MlS}
    {p : ProgHOL 64} (h : chunkB S pn p = some pn') : ISound σ tail pn pn' p := by
  unfold chunkB at h
  split at h
  · rename_i hc
    obtain rfl := Option.some.inj h
    simp only [Bool.and_eq_true] at hc
    exact Spec.hoare_post (rule_chunk hS hc.1 hc.2) fun r t _ _ hq => ⟨fun _ => hq.1, hq.2⟩
  · simp at h

theorem ichk_sound {S : List MlS} {T : ITab} (hS : GwNoneClosed S guestCode)
    (hT : ∀ e ∈ T, InitFS σ e.1 e.2.1 e.2.2) :
    ∀ (n : Nat) (p : ProgHOL 64) (tail : Bool) (pn pn' : List MlS), ichk S T n tail pn p = some pn' →
      ISound σ tail pn pn' p := by
  intro n
  induction n with
  | zero => intro p tail pn pn' h; simp [ichk] at h
  | succ n ih =>
    intro p tail pn pn' h
    match p, tail, pn, pn', h with
      | .seq a b, tail, pn, pn', h =>
          simp only [ichk] at h
          obtain ⟨pn1, h1, h2⟩ := Option.bind_eq_some_iff.mp h
          refine Spec.hoare_seq (ih a false pn pn1 h1) ?_
            (Spec.hoare_pre (ih b tail pn1 pn' h2) fun s _ hs => hs.2)
          intro r t _ hr _ hq
          exact absurd (hq.1 rfl) hr
      | .dec x sh e b, tail, pn, pn', h =>
          simp only [ichk] at h
          have hb := ih b tail pn pn' h
          refine Spec.hoare_dec fun s hs hP v hv hsh => ?_
          refine Spec.hoare_conseq hb (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
          · subst ht; exact wi_ex_congr rfl hP
          · exact ⟨hq.1, wi_ex_congr rfl hq.2⟩
      | .return e, tail, pn, pn', h =>
          simp only [ichk] at h
          split at h
          · rename_i ht
            obtain rfl := Option.some.inj h
            subst ht
            exact Spec.hoare_post rule_return fun r t _ _ hq => ⟨fun h => by simp at h, hq⟩
          · simp at h
      | .skip, tail, pn, pn', h => exact chunkB_sound hS h
      | .assign k n e, tail, pn, pn', h => exact chunkB_sound hS h
      | .primitive n o a, tail, pn, pn', h => exact chunkB_sound hS h
      | .store a v, tail, pn, pn', h => exact chunkB_sound hS h
      | .store32 a v, tail, pn, pn', h => exact chunkB_sound hS h
      | .storeByte a v, tail, pn, pn', h => exact chunkB_sound hS h
      | .while c b, tail, pn, pn', h => exact chunkB_sound hS h
      | .break, tail, pn, pn', h => exact chunkB_sound hS h
      | .continue, tail, pn, pn', h => exact chunkB_sound hS h
      | .extCall f a b c d, tail, pn, pn', h => exact chunkB_sound hS h
      | .raise x e, tail, pn, pn', h => exact chunkB_sound hS h
      | .shMemLoad o k n a, tail, pn, pn', h => exact chunkB_sound hS h
      | .shMemStore o a v, tail, pn, pn', h => exact chunkB_sound hS h
      | .tick, tail, pn, pn', h => exact chunkB_sound hS h
      | .annot a b, tail, pn, pn', h => exact chunkB_sound hS h
      | .decCall rn sh f args k, tail, pn, pn', h =>
          unfold ichk at h
          split at h
          all_goals (try (have e := ‹n + 1 = _ + 1›; have e' := Nat.succ.inj e; subst e'))
          all_goals first
            | (exfalso; simp at h; done)
            | (have heq := ‹ProgHOL.decCall rn sh f args k = _›
               obtain ⟨i1, i2, i3, h4, h5⟩ := ProgHOL.decCall.inj heq
               subst i1 i2 i3 h4 h5
               split at h
               · have hav := ‹argVal _ = some _›
                 have hsp := ‹splitSt _ = some _›
                 split at h
                 · rename_i hc
                   simp only [Bool.and_eq_true, beq_iff_eq, bne_iff_ne] at hc
                   obtain ⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, hne⟩ := hc
                   subst h1 h2 h3 h4
                   obtain ⟨hX, hL⟩ := splitSt_eq _ _ _ _ _ hsp
                   subst hX
                   have hr := ih _ _ _ _ h
                   exact rule_mark hne hav hL (fun r t l hq => ⟨hq.1, wi_ex_congr rfl hq.2⟩) hr
                 · simp at h
               · simp at h)
            | (exact absurd (‹ProgHOL.decCall rn sh f args k = _›) (by intro h; cases h))
            | exact chunkB_sound hS h
      | .ite c a b, tail, pn, pn', h =>
          unfold ichk at h
          split at h
          all_goals (try (have e := ‹n + 1 = _ + 1›; have e' := Nat.succ.inj e; subst e'))
          · simp at h
          · cases ‹ProgHOL.ite c a b = _›
          · cases ‹ProgHOL.ite c a b = _›
          · cases ‹ProgHOL.ite c a b = _›
          · have heq := ‹ProgHOL.ite c a b = _›
            injection heq with h1 h2 h3
            subst h1 h2 h3
            split at h
            · rename_i hg
              obtain rfl := Option.some.inj h
              obtain ⟨⟨k, hk⟩, hm, hc⟩ := guardB_spec hg
              subst hc
              exact Spec.hoare_post (rule_guardNe hk hm) fun r t _ _ hq => ⟨fun _ => hq.1, hq.2⟩
            · simp at h
          · have heq := ‹ProgHOL.ite c a b = _›
            injection heq with h1 h2 h3
            subst h1 h2 h3
            split at h
            · rename_i hg
              obtain ⟨⟨k, hk⟩, hm, hc⟩ := guardB_spec hg
              subst hc
              have ha := ih _ false _ _ h
              exact Spec.hoare_post (rule_guardEq hk hm ha) fun r t _ _ hq => ⟨fun _ => hq.1 rfl, hq.2⟩
            · simp at h
          all_goals first
            | (have heq := ‹ProgHOL.ite c a b = _›; exact absurd heq (by intro h; cases h))
            | exact chunkB_sound hS h
      | .call info f args, tail, pn, pn', h =>
          unfold ichk at h
          split at h
          all_goals (try (have e := ‹n + 1 = _ + 1›; have e' := Nat.succ.inj e; subst e'))
          all_goals first
            | (exfalso; simp at h; done)
            | (have heq := ‹ProgHOL.call info f args = ProgHOL.call (some (some (VarKind.global, _), none)) _ [_]›
               injection heq with h1 h2 h3
               subst h1 h2 h3
               split at h
               · rename_i w hav
                 split at h
                 · rename_i hc
                   simp only [Bool.and_eq_true, beq_iff_eq] at hc
                   obtain ⟨rfl, hok⟩ := hc
                   obtain rfl := Option.some.inj h
                   obtain ⟨t', hk, ht, hsz, hn8, hn0⟩ := allocOKB_spec hok
                   exact Spec.hoare_post (rule_alloc hav hk ht hsz hn8 hn0) fun r t _ _ hq => ⟨fun _ => hq.1, hq.2⟩
                 · simp at h
               · simp at h)
            | (have heq := ‹ProgHOL.call info f args = ProgHOL.call (some (none, none)) _ _›
               injection heq with h1 h2 h3
               subst h1 h2 h3
               split at h
               · rename_i e he
                 split at h
                 · rename_i hc
                   simp only [Bool.and_eq_true, beq_iff_eq, List.isEmpty_iff] at hc
                   obtain ⟨hpe, rfl⟩ := hc
                   obtain rfl := Option.some.inj h
                   have hmem := List.mem_of_find?_eq_some he
                   have hfe : e.1 = f := by simpa using List.find?_some he
                   have hsp := hT e hmem
                   rw [hfe] at hsp
                   refine Spec.hoare_callD (R := _) hsp ?_
                   intro s hs hP vs hvs callee v st hR hst
                   obtain ⟨Γ, hW⟩ := hP
                   rw [← hpe] at hW
                   obtain ⟨Γ', hW'⟩ := hR (by simp [Good]) v rfl Γ (wi_congr rfl hW)
                   exact ⟨fun _ => rfl, Γ', wi_congr rfl hW'⟩
                 · simp at h
               · exact chunkB_sound hS h)
            | (exact absurd (‹ProgHOL.call info f args = _›) (by intro h; cases h))
            | exact chunkB_sound hS h


theorem initFS_of_chk {S : List MlS} {T : ITab} {n : Nat} (hS : GwNoneClosed S guestCode)
    (hT : ∀ e ∈ T, InitFS σ e.1 e.2.1 e.2.2) {f : MlS}
    {e : List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL} (hps : e.1 = [])
    {pi po : List MlS} (hc : guestCode f = some e) (h : ichk S T n true pi e.2.1 = some po) :
    InitFS σ f pi po := by
  intro vs body' callee rs' hl s hs hloc r hr hg v rfl Γ hW
  obtain ⟨ps, bd, rsh⟩ := e
  simp only at hps h
  subst hps
  obtain ⟨rfl, rfl⟩ := AllocImpl.lookupCode_zero (by rw [guestCtx_code]; exact hc) hl
  have hH := ichk_sound hS hT n body' true pi po h s hs ⟨Γ, hW⟩ (by rw [hr]; trivial)
  rw [hr] at hH
  exact hH.2

end InitECandidate.Solver.MemSafe.Init
