import InitECandidate.Solver.MemSafe.Frames.GcrStep

/-!
# The gas checker (frames11, decision 3): definition and structural soundness

A decidable check **`gc E b p`** over a handler body `p` (statement forms `skip`, `tick`, `annot`,
`dec`, local `assign`, `seq`, `ite`, `return`, `raise`, `f(args);`, `var x = f(args); k`; every
other form is rejected). The status `b` says "gas has already been charged on this path"; the result
is the status at the normal fall-through, and a `return` is accepted only with `b = true`:

* `charge_gas(n)` with a literal `n ≠ 0` sets the status;
* `charge_gas(e)` (any other argument) keeps it (`Φ` not raised);
* any other callee must have a table entry of `E.tab` with unconstrained parameters, a `KeepsFp`
  fact (`E.fp`), harmless written globals, and capabilities that are either the running EV's slots
  (avoiding the gas / memory / running / extension / return-data slots) or state capabilities
  (`CapSt`); it keeps the status.

**`gc_sound`**: for any locals-blind tracked predicate `K d` (`d`: a lower bound on the `Φ` decrease,
monotone in `d`, `KOK`) whose call steps are sound (**`CallSem`**), an accepted body run from
`K (bd b)` ends normally in `K (bd b')`, returns in `K 1` and ends abnormally (non-abortive) in `K 0`
(**`GQ`**). The instance (`KC`, the `run_frames` chain facts) is in `GChkKC`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-! ## The checker -/

/-- The decrease bound of a status. -/
def bd (b : Bool) : Nat := if b then 1 else 0

/-- The decrease bound a result must carry: `1` for a return, `0` otherwise. -/
def rbd : PanSemResultExact 64 → Nat
  | .returned _ => 1
  | _ => 0

/-- The decrease bound after a callee result `r`, for the post-call status `b'`. -/
def cbd (b' : Bool) : PanSemResultExact 64 → Nat
  | .returned _ => bd b'
  | _ => 0

/-- The checker's environment: the callee table, the `KeepsFp` list, the allowed written globals. -/
structure GEnv where
  tab : CTab
  fp : List MlS
  gw : List MlS

/-- The running EV's capability. -/
def CapEv (c : Cap) : Prop := c.g = nmEv ∧ c.t = tEV ∧ c.all = false

/-- A state capability: no slot list, all-cells only over state types, its global (if any) the
journal or `sk_buf`. -/
def CapSt (c : Cap) : Prop :=
  c.ks = [] ∧ (c.all = true → guestSt c.t = true) ∧
    (c.g ≠ anyG → (c.g = nmJr ∧ c.t = tJOURNAL) ∨ (c.g = nmSk ∧ c.t = tB64))

instance (c : Cap) : Decidable (CapEv c) := by unfold CapEv; infer_instance
instance (c : Cap) : Decidable (CapSt c) := by unfold CapSt; infer_instance

/-- The EV slots the capabilities `cs` allow. -/
def evKs (cs : List Cap) : List Nat := (cs.filter fun c => decide (CapEv c)).flatMap (·.ks)

/-- The EV slots a plain callee must avoid: memory (3, 5), running (13), gas (8, 24), return data
(18, 27) and the extension's slots. -/
def ksBad : List Nat := [3, 5, 13, 8, 24, 18, 27] ++ evXSlots

/-- **A plain callee**: unconstrained parameters (`n` arguments), written globals inside `gw` and
away from `ev` / `cur_cont` / the journal globals, `KeepsFp`, ev / state capabilities only. -/
def PlainOK (E : GEnv) (f : MlS) (sg : Sig) (cs : List Cap) (n : Nat) : Prop :=
  sg.params.length = n ∧ (∀ pt ∈ sg.params, pt = .any) ∧ (∀ g ∈ sg.gw, g ∈ E.gw) ∧
    nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw ∧ JrOut sg.gw ∧ f ∈ E.fp ∧ (∀ c ∈ cs, CapEv c ∨ CapSt c) ∧
    ∀ k ∈ evKs cs, 8 * k + 8 ≤ 280 ∧ k ∉ ksBad

instance (E : GEnv) (f : MlS) (sg : Sig) (cs : List Cap) (n : Nat) :
    Decidable (PlainOK E f sg cs n) := by unfold PlainOK; infer_instance

/-- The status after a call `f(args)`. -/
def callCl (E : GEnv) (b : Bool) (f : MlS) (args : List (ExpHOL 64)) : Option Bool :=
  if f = nm "charge_gas" then
    match args with
    | [.const n] => some (b || decide (n ≠ 0))
    | [_] => some b
    | _ => none
  else
    match E.tab.find? (fun q => decide (q.1 = f)) with
    | some (_, sg, cs) => if PlainOK E f sg cs args.length then some b else none
    | none => none

/-- **The gas checker.** -/
def gc (E : GEnv) : Bool → ProgHOL 64 → Option Bool
  | b, .skip => some b
  | b, .tick => some b
  | b, .annot _ _ => some b
  | b, .dec _ _ _ p => gc E b p
  | b, .assign .local _ _ => some b
  | b, .seq p q =>
      match gc E b p with
      | some b1 => gc E b1 q
      | none => none
  | b, .ite _ p q =>
      match gc E b p, gc E b q with
      | some b1, some b2 => some (b1 && b2)
      | _, _ => none
  | b, .return _ => if b then some true else none
  | _, .raise _ _ => some true
  | b, .call (some (none, none)) f args => callCl E b f args
  | b, .decCall _ _ f args p =>
      match callCl E b f args with
      | some b1 => gc E b1 p
      | none => none
  | _, _ => none

/-! ## Soundness -/

/-- The checker's post for the final status `b'`. -/
def GQ (K : Nat → State σ → Prop) (b' : Bool) (ro : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  (ro = none → K (bd b') t) ∧ ∀ r, ro = some r → ¬ Abortive r → K (rbd r) t

/-- The tracked predicate depends only on memory, globals, `memaddrs`, `be`, and is monotone in
the bound. -/
structure KOK (K : Nat → State σ → Prop) : Prop where
  congr : ∀ d (u t : State σ), K d u → t.memory = u.memory → t.globals = u.globals →
    t.memaddrs = u.memaddrs → t.be = u.be → K d t
  mono : ∀ d d' (u : State σ), K d u → d' ≤ d → K d' u

/-- **The call steps are sound**: every call the checker accepts has a function specification
whose results, from `K (bd b)`, end in `K (cbd b' r)`. -/
def CallSem (σ : Type) (X : Ctx 64) (E : GEnv) (K : Nat → State σ → Prop) : Prop :=
  ∀ b b' f args, callCl E b f args = some b' →
    ∃ R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop,
      FunSpec σ X f R ∧ ∀ u0, K (bd b) u0 → ∀ vs, evs u0 args = some vs → ∀ callee r st,
        R vs (callEntryStateHOLFinite u0 callee) r st → Good (some r) → ¬ Abortive r →
          K (cbd b' r) st

theorem bd_le_and_left (b1 b2 : Bool) : bd (b1 && b2) ≤ bd b1 := by
  cases b1 <;> cases b2 <;> decide

theorem bd_le_and_right (b1 b2 : Bool) : bd (b1 && b2) ≤ bd b2 := by
  cases b1 <;> cases b2 <;> decide

theorem rbd_abn {r : PanSemResultExact 64} (h : Abn r) : rbd r = 0 := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> rfl

theorem cbd_abn {b : Bool} {r : PanSemResultExact 64} (h : Abn r) : cbd b r = 0 := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> rfl

section sound
variable {E : GEnv} {K : Nat → State σ → Prop}

theorem kok_loc (hK : KOK K) {d : Nat} {u : State σ} (h : K d u) (l : Locs) :
    K d { u with locals := l } :=
  hK.congr d u _ h rfl rfl rfl rfl

theorem gq_loc (hK : KOK K) {b : Bool} {ro : Option (PanSemResultExact 64)} {t : State σ}
    (h : GQ K b ro t) (l : Locs) : GQ K b ro { t with locals := l } :=
  ⟨fun h0 => kok_loc hK (h.1 h0) l, fun r hr hna => kok_loc hK (h.2 r hr hna) l⟩

/-- **The gas checker is sound.** -/
theorem gc_sound (hK : KOK K) (hC : CallSem σ X E K) :
    ∀ (p : ProgHOL 64) (b b' : Bool), gc E b p = some b' → ∀ u0 : State σ, K (bd b) u0 →
      HoareG σ X (fun t => t = u0) p (GQ K b')
  | .skip, b, b', h, u0, hu => by
      simp only [gc, Option.some.injEq] at h; subst h
      exact hoareG_skip fun s _ hs => by subst hs; exact ⟨fun _ => hu, fun r hr => by cases hr⟩
  | .tick, b, b', h, u0, hu => by
      simp only [gc, Option.some.injEq] at h; subst h
      refine hoareG_tick fun s _ hs _ => ?_
      subst hs
      exact ⟨fun _ => hK.congr _ _ _ hu rfl rfl rfl rfl, fun r hr => by cases hr⟩
  | .annot _ _, b, b', h, u0, hu => by
      simp only [gc, Option.some.injEq] at h; subst h
      exact hoareG_annot fun s _ hs => by subst hs; exact ⟨fun _ => hu, fun r hr => by cases hr⟩
  | .dec n sh e p, b, b', h, u0, hu => by
      simp only [gc] at h
      refine hoareG_dec fun s _ hs v _ _ => ?_
      subst hs
      refine hoareG_conseq (gc_sound hK hC p b b' h _ (kok_loc hK hu _)) (fun _ _ h => h)
        fun r t _ _ hq => gq_loc hK hq _
  | .assign k n e, b, b', h, u0, hu => by
      cases k with
      | «local» =>
          simp only [gc, Option.some.injEq] at h; subst h
          refine hoareG_assign fun s _ hs v _ _ => ?_
          subst hs
          exact ⟨fun _ => kok_loc hK hu _, fun r hr => by cases hr⟩
      | «global» => simp [gc] at h
  | .seq p q, b, b', h, u0, hu => by
      simp only [gc] at h
      split at h
      · rename_i b1 h1
        refine hoareG_seq (R := GQ K b1) (gc_sound hK hC p b b1 h1 u0 hu) ?_ ?_
        · intro r t _ hr _ hq
          exact ⟨fun h0 => absurd h0 hr, hq.2⟩
        · exact hoareG_pt fun u hq => gc_sound hK hC q b1 b' h u (hq.1 rfl)
      · cases h
  | .ite c p q, b, b', h, u0, hu => by
      simp only [gc] at h
      split at h
      · rename_i b1 b2 h1 h2
        simp only [Option.some.injEq] at h; subst h
        refine hoareG_ite ?_ ?_
        · refine hoareG_conseq (gc_sound hK hC p b b1 h1 u0 hu) (fun _ _ h => h.1) ?_
          exact fun r t _ _ hq => ⟨fun h0 => hK.mono _ _ _ (hq.1 h0) (bd_le_and_left b1 b2), hq.2⟩
        · refine hoareG_conseq (gc_sound hK hC q b b2 h2 u0 hu) (fun _ _ h => h.1) ?_
          exact fun r t _ _ hq => ⟨fun h0 => hK.mono _ _ _ (hq.1 h0) (bd_le_and_right b1 b2), hq.2⟩
      · cases h
  | .return e, b, b', h, u0, hu => by
      simp only [gc] at h
      split at h
      · rename_i hb
        subst hb
        refine hoareG_return fun s _ hs v _ => ?_
        subst hs
        refine ⟨fun h0 => (by cases h0), fun r hr _ => ?_⟩
        cases hr
        exact hK.congr _ _ _ hu rfl rfl rfl rfl
      · cases h
  | .raise x e, b, b', h, u0, hu => by
      refine hoareG_raise fun s _ hs v _ => ?_
      subst hs
      refine ⟨fun h0 => (by cases h0), fun r hr _ => ?_⟩
      cases hr
      exact hK.congr _ _ _ (hK.mono _ _ _ hu (Nat.zero_le _)) rfl rfl rfl rfl
  | .call info f args, b, b', h, u0, hu => by
      rcases info with _ | ⟨_ | _, _ | _⟩
      · simp [gc] at h
      · simp only [gc] at h
        obtain ⟨R, hf, hstep⟩ := hC b b' f args h
        refine hoareG_callD hf ?_ ?_
        · intro s _ hs vs hvs callee v st hR _
          subst hs
          refine ⟨fun _ => kok_loc hK ?_ _, fun r hr => by cases hr⟩
          exact hstep _ hu vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
        · intro s _ hs vs hvs callee r st hR _ habn
          subst hs
          refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
          simp only [Option.some.injEq] at hr'; subst hr'
          have := hstep _ hu vs hvs callee r st hR (good_of_abn habn) hna
          rw [cbd_abn habn] at this
          rw [rbd_abn habn]
          exact kok_loc hK this _
      · simp [gc] at h
      · simp [gc] at h
      · simp [gc] at h
  | .decCall rn sh f args p, b, b', h, u0, hu => by
      simp only [gc] at h
      split at h
      · rename_i b1 h1
        obtain ⟨R, hf, hstep⟩ := hC b b1 f args h1
        refine hoareG_decCall hf ?_ ?_
        · intro s _ hs vs hvs callee v st hR _ _
          subst hs
          have hk := hstep _ hu vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
          refine hoareG_conseq (gc_sound hK hC p b1 b' h _ (kok_loc hK (kok_loc hK hk _) _))
            (fun _ _ h => h) fun r t _ _ hq => gq_loc hK hq _
        · intro s _ hs vs hvs callee r st hR _ habn
          subst hs
          refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
          simp only [Option.some.injEq] at hr'; subst hr'
          have := hstep _ hu vs hvs callee r st hR (good_of_abn habn) hna
          rw [cbd_abn habn] at this
          rw [rbd_abn habn]
          exact kok_loc hK this _
      · cases h
  | .primitive _ _ _, _, _, h, _, _ => by simp [gc] at h
  | .store _ _, _, _, h, _, _ => by simp [gc] at h
  | .store32 _ _, _, _, h, _, _ => by simp [gc] at h
  | .storeByte _ _, _, _, h, _, _ => by simp [gc] at h
  | .while _ _, _, _, h, _, _ => by simp [gc] at h
  | .break, _, _, h, _, _ => by simp [gc] at h
  | .continue, _, _, h, _, _ => by simp [gc] at h
  | .extCall _ _ _ _ _, _, _, h, _, _ => by simp [gc] at h
  | .shMemLoad _ _ _ _, _, _, h, _, _ => by simp [gc] at h
  | .shMemStore _ _ _, _, _, h, _, _ => by simp [gc] at h

end sound

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.gc_sound
