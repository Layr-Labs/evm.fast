import InitECandidate.Solver.MemSafe.Write

/-!
# Abstract expression evaluation (M1)

`aev C A n e` abstracts the value of `e` (fuel `n` bounds the depth): constants, locals
(from `A`), typed globals, `a + b` on pointers/temporaries/constants, one-word loads of
pointer slots of typed objects, and the shape of word-producing expressions and of
`rstruct`s of words. `aev_sound`: under `G` and `LocalsOK`, every value `e` evaluates to
satisfies `VOk` for the abstraction.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The abstraction of a word read from a slot of kind `k`. -/
def slotAV : FK → AV
  | .ptr t => .gp t 0
  | .nptr t => .fk (.nptr t)
  | .uptr ts => .fk (.uptr ts)
  | .bnd => .fk .bnd
  | _ => .top

/-- The abstraction of a global. -/
def gAV (C : Cfg) (g : MlS) : AV :=
  match C.GT.lookup g with
  | some (.ptr t) => .gp t 0
  | some (.nptr t) => .fk (.nptr t)
  | some (.uptr ts) => .fk (.uptr ts)
  | some _ => .top
  | none => .unk

/-- One-word abstractions (everything but `unk` and `wide`). -/
def AV.isWord : AV → Bool
  | .unk => false
  | .wide _ => false
  | _ => true

def addAV : AV → AV → AV
  | .gp t o, .cst c => .gp t (o + c.toNat)
  | .cst c, .gp t o => .gp t (o + c.toNat)
  | .tmp k o, .cst c => .tmp k (o + c.toNat)
  | .cst c, .tmp k o => .tmp k (o + c.toNat)
  | .cst a, .cst b => .cst (a + b)
  | .fk (.nptr t), .cst c => .np [t] c.toNat
  | .cst c, .fk (.nptr t) => .np [t] c.toNat
  | .fk (.uptr ts), .cst c => .np ts c.toNat
  | .cst c, .fk (.uptr ts) => .np ts c.toNat
  | .np ts o, .cst c => .np ts (o + c.toNat)
  | .cst c, .np ts o => .np ts (o + c.toNat)
  | _, _ => .top

/-- Offsets below `npMax` from a null value (`< nullMax`) stay below `heapBase`. -/
def npMax : Nat := heapBase - nullMax

/-- A nullable pointer abstraction: its types and offset. -/
def npOf : AV → Option (List Nat × Nat)
  | .np ts o => some (ts, o)
  | .fk (.nptr t) => some ([t], 0)
  | .fk (.uptr ts) => some (ts, 0)
  | _ => none

/-- The common slot kind at offset `o` of the types `ts` (accessible through a nullable
pointer). -/
def npSlot (C : Cfg) (ts : List Nat) (o : Nat) : Option FK :=
  match ts with
  | [] => none
  | t :: _ =>
    match o % 8 == 0 && Nat.ble (o + 8) npMax &&
        ts.all (fun t' => Nat.ble (o + 8) (C.ty t').minSz &&
          (C.ty t').slot (o / 8) == (C.ty t).slot (o / 8)) with
    | true => some ((C.ty t).slot (o / 8))
    | false => none

/-- Syntactically word-producing expressions. -/
def wordy : ExpHOL 64 → Bool
  | .const _ => true
  | .op _ _ => true
  | .panop _ _ => true
  | .cmp _ _ _ => true
  | .shift _ _ _ => true
  | .loadByte _ => true
  | .load32 _ => true
  | .load .one _ => true
  | .baseAddr => true
  | .topAddr => true
  | .bytesInWord => true
  | _ => false

/-- The abstraction of a value of declared shape `sh`. -/
def shAV (sh : ShapeHOL) : AV :=
  match shW sh with
  | some n => .wide n
  | none => .unk

/-- Abstractions of non-zero words: non-zero constants and pointers into `Γ` objects at
small offsets (objects lie above `heapBase`). -/
def nzAV : AV → Bool
  | .cst c => c != 0
  | .gp _ o => Nat.ble o 4294967296
  | _ => false

/-- A (non-)equality test of a non-zero value against `0`. -/
def cmpNZ (o : Cmp) (u v : AV) : AV :=
  match o, (nzAV u && v == .cst 0) || (u == .cst 0 && nzAV v) with
  | .equal, true => .cst 0
  | .notEqual, true => .cst 1
  | _, _ => .top

/-- The sum of a list of abstractions (`wordOp .add` sums right to left). -/
def addsAV : List AV → AV
  | [] => .cst 0
  | u :: us => addAV u (addsAV us)

/-- The constants of a list of abstractions (if all are constants). -/
def AV.csts : List AV → Option (List (BitVec 64))
  | [] => some []
  | .cst c :: as => (AV.csts as).map (c :: ·)
  | _ :: _ => none

/-- Abstract evaluation (operators on constants are folded). -/
def aev (C : Cfg) (A : AEnv) : Nat → ExpHOL 64 → AV
  | 0, e => match wordy e with
    | true => .top
    | false => .unk
  | n + 1, e =>
    match e with
    | .const c => .cst c
    | .var .local x =>
      match A.L.lookup x with
      | some v => v
      | none => .unk
    | .var .global g => gAV C g
    | .op .add [a, b] =>
      match (aev C A n a).isWord, (aev C A n b).isWord with
      | true, true => addAV (aev C A n a) (aev C A n b)
      | _, _ => .top
    | .op .add args =>
      match (args.map (aev C A n)).all AV.isWord with
      | true => addsAV (args.map (aev C A n))
      | false => .top
    | .op o args =>
      match AV.csts (args.map (aev C A n)) with
      | some cs =>
        match wordOpHOL o cs with
        | some w => .cst w
        | none => .top
      | none => .top
    | .panop o args =>
      match AV.csts (args.map (aev C A n)) with
      | some cs =>
        match panOpHOL o cs with
        | some w => .cst w
        | none => .top
      | none => .top
    | .cmp o a b =>
      match aev C A n a, aev C A n b with
      | .cst x, .cst y =>
        match Flapjack.Compiler.Encoders.Asm.wordCmpHOL o x y with
        | true => .cst 1
        | false => .cst 0
      | u, v => cmpNZ o u v
    | .shift o a b =>
      match aev C A n a, aev C A n b with
      | .cst x, .cst y =>
        match wordShiftHOL o x y.toNat with
        | some w => .cst w
        | none => .top
      | _, _ => .top
    | .load .one a =>
      match aev C A n a with
      | .gp t o =>
        match o % 8, Nat.ble (o + 8) (C.ty t).minSz with
        | 0, true => slotAV ((C.ty t).slot (o / 8))
        | _, _ => .top
      | av =>
        match npOf av with
        | some (ts, o) =>
          match npSlot C ts o with
          | some k => slotAV k
          | none => .top
        | none => .top
    | .load sh _ => shAV sh
    | .rstruct es =>
      match es.all wordy with
      | true => .wide es.length
      | false => .unk
    | e =>
      match wordy e with
      | true => .top
      | false => .unk

theorem slotAV_isWord (k : FK) : (slotAV k).isWord = true := by cases k <;> rfl

mutual
theorem flatten_len : (v : ValueHOL 64) → ∀ n, shW (shapeOfHOLExact v) = some n →
    (flattenHOL v).length = n
  | .val w, n, h => by
      simp [shapeOfHOLExact, shW] at h
      simp [flattenHOL, h]
  | .rStruct fields, n, h => by
      simp only [shapeOfHOLExact, shW] at h
      rw [flattenHOL]
      exact flattens_len fields n h
  | .nStruct _ _, n, h => by simp [shapeOfHOLExact, shW] at h
theorem flattens_len : (vs : List (ValueHOL 64)) → ∀ n, shWs (vs.map shapeOfHOLExact) = some n →
    ((vs.map flattenHOL).flatten).length = n
  | [], n, h => by simp [shWs] at h; simp [h]
  | v :: vs, n, h => by
      simp only [List.map_cons, shWs] at h
      split at h
      · rename_i a b ha hb
        simp only [Option.some.injEq] at h
        subst h
        simp only [List.map_cons, List.flatten_cons, List.length_append]
        rw [flatten_len v a ha, flattens_len vs b hb]
      · cases h
end

mutual
theorem load_len : (sh : ShapeHOL) → ∀ (a : BitVec 64) (dom : BitVec 64 → Prop)
    (inst : DecidablePred dom) (mem : BitVec 64 → HolWordLab 64) ctx (v : ValueHOL 64) n,
    @memLoadHOLExact 64 _ sh a dom inst mem ctx = some v → shW sh = some n →
      (flattenHOL v).length = n
  | .one, a, dom, inst, mem, ctx, v, n, h, hw => by
      simp only [shW, Option.some.injEq] at hw
      subst hw
      rw [memLoadHOLExact] at h
      split at h
      · cases h; simp [flattenHOL]
      · cases h
  | .comb shs, a, dom, inst, mem, ctx, v, n, h, hw => by
      simp only [shW] at hw
      rw [memLoadHOLExact] at h
      split at h
      · rename_i vs hvs
        cases h
        rw [flattenHOL]
        exact loads_len shs a dom inst mem ctx vs n hvs hw
      · cases h
  | .named _, _, _, _, _, _, _, _, _, hw => by simp [shW] at hw
theorem loads_len : (shs : List ShapeHOL) → ∀ (a : BitVec 64) (dom : BitVec 64 → Prop)
    (inst : DecidablePred dom) (mem : BitVec 64 → HolWordLab 64) ctx (vs : List (ValueHOL 64)) n,
    @memLoadsHOLExact 64 _ shs a dom inst mem ctx = some vs → shWs shs = some n →
      ((vs.map flattenHOL).flatten).length = n
  | [], a, dom, inst, mem, ctx, vs, n, h, hw => by
      rw [memLoadsHOLExact] at h
      cases h
      simp [shWs] at hw
      simp [hw]
  | sh :: shs, a, dom, inst, mem, ctx, vs, n, h, hw => by
      simp only [shWs] at hw
      split at hw
      · rename_i x y hx hy
        cases hw
        rw [memLoadsHOLExact] at h
        split at h
        · rename_i v vs' hv hvs
          cases h
          simp only [List.map_cons, List.flatten_cons, List.length_append]
          rw [load_len sh _ dom inst mem ctx v x hv hx, loads_len shs _ dom inst mem ctx vs' y hvs hy]
        · cases h
      · cases hw
end

mutual
theorem load_shape : (sh : ShapeHOL) → ∀ (a : BitVec 64) (dom : BitVec 64 → Prop)
    (inst : DecidablePred dom) (mem : BitVec 64 → HolWordLab 64) ctx (v : ValueHOL 64) n,
    @memLoadHOLExact 64 _ sh a dom inst mem ctx = some v → shW sh = some n →
      shapeOfHOLExact v = sh
  | .one, a, dom, inst, mem, ctx, v, n, h, hw => by
      rw [memLoadHOLExact] at h
      split at h
      · cases h; simp [shapeOfHOLExact]
      · cases h
  | .comb shs, a, dom, inst, mem, ctx, v, n, h, hw => by
      simp only [shW] at hw
      rw [memLoadHOLExact] at h
      split at h
      · rename_i vs hvs
        cases h
        rw [shapeOfHOLExact]
        rw [loads_shape shs a dom inst mem ctx vs n hvs hw]
      · cases h
  | .named _, _, _, _, _, _, _, _, _, hw => by simp [shW] at hw
theorem loads_shape : (shs : List ShapeHOL) → ∀ (a : BitVec 64) (dom : BitVec 64 → Prop)
    (inst : DecidablePred dom) (mem : BitVec 64 → HolWordLab 64) ctx (vs : List (ValueHOL 64)) n,
    @memLoadsHOLExact 64 _ shs a dom inst mem ctx = some vs → shWs shs = some n →
      vs.map shapeOfHOLExact = shs
  | [], a, dom, inst, mem, ctx, vs, n, h, hw => by
      rw [memLoadsHOLExact] at h
      cases h
      rfl
  | sh :: shs, a, dom, inst, mem, ctx, vs, n, h, hw => by
      simp only [shWs] at hw
      split at hw
      · rename_i x y hx hy
        rw [memLoadsHOLExact] at h
        split at h
        · rename_i v vs' hv hvs
          cases h
          simp only [List.map_cons]
          rw [load_shape sh _ dom inst mem ctx v x hv hx, loads_shape shs _ dom inst mem ctx vs' y hvs hy]
        · cases h
      · cases hw
end

theorem shWs_words : ∀ {vs : List (ValueHOL 64)}, (∀ v ∈ vs, ∃ w, v = .val (.word w)) →
    shWs (vs.map shapeOfHOLExact) = some vs.length
  | [], _ => rfl
  | v :: vs, h => by
      obtain ⟨w, rfl⟩ := h v List.mem_cons_self
      have ih := shWs_words (fun u hu => h u (List.mem_cons_of_mem _ hu))
      simp only [List.map_cons, shWs, ih]
      simp [shapeOfHOLExact, shW]
      omega

theorem shW_words {vs : List (ValueHOL 64)} (h : ∀ v ∈ vs, ∃ w, v = .val (.word w)) :
    shW (shapeOfHOLExact (ValueHOL.rStruct vs)) = some vs.length := by
  rw [shapeOfHOLExact]
  exact shWs_words h

/-- A value of declared shape `sh` satisfies `shAV sh`. -/
theorem shAV_vok {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {sh : ShapeHOL} {v : ValueHOL 64}
    (h : shapeOfHOLExact v = sh) : VOk Γ Θ (shAV sh) v := by
  unfold shAV
  split
  · rename_i n hn
    subst h
    exact hn
  · trivial

theorem addAV_isWord (u v : AV) : (addAV u v).isWord = true := by
  unfold addAV; split <;> rfl

theorem val_word' (x : HolWordLab 64) : ∃ w, x = .word w := by
  cases x with
  | word w => exact ⟨w, rfl⟩

section sound
variable {σ : Type} {s : State σ}

theorem ev_wordy {e : ExpHOL 64} (he : wordy e = true) {v : ValueHOL 64}
    (h : ev s e = some v) : ∃ w, v = .val (.word w) := by
  cases e with
  | const c =>
      simp only [ev, evalHOLExact, Option.some.injEq] at h
      exact ⟨c, h.symm⟩
  | op o es =>
      simp only [ev, evalHOLExact] at h
      split at h
      · split at h
        · obtain ⟨w, -, rfl⟩ := Option.map_eq_some_iff.mp h
          exact ⟨w, rfl⟩
        · simp at h
      · simp at h
  | panop o es =>
      simp only [ev, evalHOLExact] at h
      split at h
      · split at h
        · obtain ⟨w, -, rfl⟩ := Option.map_eq_some_iff.mp h
          exact ⟨w, rfl⟩
        · simp at h
      · simp at h
  | cmp o a b =>
      obtain ⟨_, _, _, _, rfl⟩ := ev_cmp_inv h
      exact ⟨_, rfl⟩
  | shift o a b =>
      simp only [ev, evalHOLExact] at h
      split at h
      · obtain ⟨w, -, rfl⟩ := Option.map_eq_some_iff.mp h
        exact ⟨w, rfl⟩
      · simp at h
  | loadByte a =>
      obtain ⟨w, rfl, -⟩ := ev_loadByte_word h
      exact ⟨w, rfl⟩
  | load32 a =>
      simp only [ev, evalHOLExact] at h
      split at h
      · obtain ⟨w, -, rfl⟩ := Option.map_eq_some_iff.mp h
        exact ⟨_, rfl⟩
      · simp at h
  | load sh a =>
      cases sh with
      | one =>
          obtain ⟨x, -, -, rfl⟩ := ev_load_one h
          cases hx : s.memory x with
          | word w => exact ⟨w, rfl⟩
      | comb _ => simp [wordy] at he
      | named _ => simp [wordy] at he
  | baseAddr =>
      simp only [ev, evalHOLExact, Option.some.injEq] at h
      exact ⟨_, h.symm⟩
  | topAddr =>
      simp only [ev, evalHOLExact, Option.some.injEq] at h
      exact ⟨_, h.symm⟩
  | bytesInWord =>
      simp only [ev, evalHOLExact, Option.some.injEq] at h
      exact ⟨_, h.symm⟩
  | var _ _ => simp [wordy] at he
  | rstruct _ => simp [wordy] at he
  | rfield _ _ => simp [wordy] at he
  | nstruct _ _ => simp [wordy] at he
  | nfield _ _ => simp [wordy] at he

theorem evs_wordy {es : List (ExpHOL 64)} (he : es.all wordy = true) {vs : List (ValueHOL 64)}
    (h : evs s es = some vs) : vs.length = es.length ∧ ∀ v ∈ vs, ∃ w, v = .val (.word w) := by
  induction es generalizing vs with
  | nil =>
      simp only [evs, evalListHOLExact, Option.some.injEq] at h
      subst h
      exact ⟨rfl, by simp⟩
  | cons e es ih =>
      simp only [List.all_cons, Bool.and_eq_true] at he
      obtain ⟨v, vs', rfl, hv, hvs'⟩ := evs_cons_inv h
      obtain ⟨hl, hw⟩ := ih he.2 hvs'
      refine ⟨by simp [hl], ?_⟩
      intro u hu
      rcases List.mem_cons.mp hu with rfl | hu
      · exact ev_wordy he.1 hv
      · exact hw u hu

theorem flatten_words {vs : List (ValueHOL 64)} (h : ∀ v ∈ vs, ∃ w, v = .val (.word w)) :
    ((vs.map flattenHOL).flatten).length = vs.length := by
  induction vs with
  | nil => rfl
  | cons v vs ih =>
      obtain ⟨w, rfl⟩ := h v List.mem_cons_self
      have := ih (fun u hu => h u (List.mem_cons_of_mem _ hu))
      simp only [List.map_cons, List.flatten_cons, List.length_append, List.length_cons]
      rw [this]
      simp [flattenHOL]
      omega

theorem ofNat_add (b : BitVec 64) (o : Nat) (c : BitVec 64) :
    b + BitVec.ofNat 64 o + c = b + BitVec.ofNat 64 (o + c.toNat) := by
  rw [BitVec.add_assoc]
  congr 1
  apply BitVec.eq_of_toNat_eq
  simp [BitVec.toNat_add, Nat.add_mod]

theorem addAV_sound {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {x y : BitVec 64} {u v : AV}
    (hu : AVok Γ Θ u x) (hv : AVok Γ Θ v y) : AVok Γ Θ (addAV u v) (x + y) := by
  unfold addAV
  split <;> simp only [AVok] at hu hv ⊢
  all_goals first
    | trivial
    | (obtain ⟨ob, hob, ht, rfl⟩ := hu; subst hv; exact ⟨ob, hob, ht, ofNat_add _ _ _⟩)
    | (obtain ⟨ob, hob, ht, rfl⟩ := hv; subst hu
       exact ⟨ob, hob, ht, by rw [BitVec.add_comm]; exact ofNat_add _ _ _⟩)
    | (obtain ⟨q, n, hq, rfl⟩ := hu; subst hv; exact ⟨q, n, hq, ofNat_add _ _ _⟩)
    | (obtain ⟨q, n, hq, rfl⟩ := hv; subst hu
       exact ⟨q, n, hq, by rw [BitVec.add_comm]; exact ofNat_add _ _ _⟩)
    | (subst hu; subst hv; rfl)
    | (obtain ⟨b, rfl, hb⟩ := hu; subst hv; exact ⟨b, ofNat_add _ _ _, hb⟩)
    | (obtain ⟨b, rfl, hb⟩ := hv; subst hu
       exact ⟨b, by rw [BitVec.add_comm]; exact ofNat_add _ _ _, hb⟩)
    | (subst hv; exact ⟨x, by simp, by simpa [Fits] using hu⟩)
    | (subst hu; exact ⟨y, by rw [BitVec.add_comm]; simp, by simpa [Fits] using hv⟩)

theorem slotAV_sound {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {k : FK} {w : BitVec 64}
    (h : Fits Γ k w) : AVok Γ Θ (slotAV k) w := by
  cases k with
  | ptr t =>
      obtain ⟨ob, hob, hb, ht⟩ := h
      exact ⟨ob, hob, ht, by rw [hb]; simp⟩
  | nptr t => exact h
  | uptr ts => exact h
  | bnd => exact h
  | scalar => trivial
  | prot => trivial

theorem word_vok {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {av : AV} (hw : av.isWord = true)
    {w : BitVec 64} (h : AVok Γ Θ av w) : VOk Γ Θ av (.val (.word w)) := by
  cases av <;> simp [AV.isWord] at hw <;> exact ⟨w, rfl, h⟩

theorem vok_word {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {av : AV} (hw : av.isWord = true)
    {v : ValueHOL 64} (h : VOk Γ Θ av v) : ∃ w, v = .val (.word w) ∧ AVok Γ Θ av w := by
  cases av <;> simp [AV.isWord] at hw <;> exact h

theorem top_vok {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {e : ExpHOL 64} (he : wordy e = true)
    {v : ValueHOL 64} (h : ev s e = some v) : VOk Γ Θ .top v := by
  obtain ⟨w, rfl⟩ := ev_wordy he h
  exact ⟨w, rfl, trivial⟩

theorem wordy_vok {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {e : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s e = some v) :
    VOk Γ Θ (match wordy e with | true => AV.top | false => AV.unk) v := by
  cases he : wordy e
  · trivial
  · exact top_vok he h

theorem npOf_sound {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {av : AV} {ts : List Nat} {o : Nat}
    (h : npOf av = some (ts, o)) {x : BitVec 64} (hv : VOk Γ Θ av (.val (.word x))) :
    ∃ b, x = b + BitVec.ofNat 64 o ∧ (b.toNat < nullMax ∨ ∃ ob ∈ Γ, ob.base = b ∧ ob.ty ∈ ts) := by
  unfold npOf at h
  split at h
  · cases h
    obtain ⟨w, hw, hok⟩ := hv
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    subst hw
    exact hok
  · cases h
    obtain ⟨w, hw, hok⟩ := hv
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    subst hw
    refine ⟨x, by simp, ?_⟩
    simpa [AVok, Fits] using hok
  · cases h
    obtain ⟨w, hw, hok⟩ := hv
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    subst hw
    refine ⟨x, by simp, ?_⟩
    simpa [AVok, Fits] using hok
  · cases h

theorem npSlot_spec {C : Cfg} {ts : List Nat} {o : Nat} {k : FK} (h : npSlot C ts o = some k) :
    o % 8 = 0 ∧ o + 8 ≤ npMax ∧ ∀ t ∈ ts, o + 8 ≤ (C.ty t).minSz ∧ (C.ty t).slot (o / 8) = k := by
  unfold npSlot at h
  split at h
  · cases h
  · rename_i t ts'
    split at h
    · rename_i hc
      cases h
      simp only [Bool.and_eq_true, beq_iff_eq, List.all_eq_true] at hc
      obtain ⟨⟨h8, hmax⟩, hall⟩ := hc
      refine ⟨h8, Nat.le_of_ble_eq_true hmax, fun t' ht' => ?_⟩
      obtain ⟨h1, h2⟩ := hall t' ht'
      exact ⟨Nat.le_of_ble_eq_true h1, by simpa using h2⟩
    · cases h

/-- **Abstract evaluation is sound.** -/
theorem ev_op_some {o : BinOp} {args : List (ExpHOL 64)} {v : ValueHOL 64}
    (h : ev s (.op o args) = some v) : ∃ vs, evs s args = some vs ∧
      (wordOpHOL o (vs.map valueWord)).map (fun w => (ValueHOL.val (.word w) : ValueHOL 64)) =
        some v := by
  simp only [ev, evs, evalHOLExact] at h ⊢
  split at h
  · rename_i vs hvs
    split at h
    · exact ⟨vs, hvs, h⟩
    · simp at h
  · simp at h

theorem ev_panop_some {o : PanOp} {args : List (ExpHOL 64)} {v : ValueHOL 64}
    (h : ev s (.panop o args) = some v) : ∃ vs, evs s args = some vs ∧
      (panOpHOL o (vs.map valueWord)).map (fun w => (ValueHOL.val (.word w) : ValueHOL 64)) =
        some v := by
  simp only [ev, evs, evalHOLExact] at h ⊢
  split at h
  · rename_i vs hvs
    split at h
    · exact ⟨vs, hvs, h⟩
    · simp at h
  · simp at h

theorem ev_shift_some {o : Shift} {a b : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.shift o a b) = some v) : ∃ x y, ev s a = some (.val (.word x)) ∧
      ev s b = some (.val (.word y)) ∧
      (wordShiftHOL o x y.toNat).map (fun w => (ValueHOL.val (.word w) : ValueHOL 64)) =
        some v := by
  simp only [ev, evalHOLExact] at h ⊢
  split at h
  · rename_i x y hx hy
    exact ⟨x, y, hx, hy, h⟩
  · simp at h

theorem addsAV_isWord : ∀ us : List AV, (addsAV us).isWord = true
  | [] => rfl
  | u :: us => addAV_isWord u (addsAV us)

theorem adds_evs {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {f : ExpHOL 64 → AV}
    (hf : ∀ e v, ev s e = some v → VOk Γ Θ (f e) v) :
    ∀ {args : List (ExpHOL 64)} {vs : List (ValueHOL 64)},
      (args.map f).all AV.isWord = true → evs s args = some vs →
        AVok Γ Θ (addsAV (args.map f)) ((vs.map valueWord).foldr (· + ·) 0)
  | [], vs, _, hv => by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hv
      subst hv
      rfl
  | e :: es, vs, hw, hv => by
      obtain ⟨v, vs', rfl, he, hes⟩ := evs_cons_inv hv
      simp only [List.map_cons, List.all_cons, Bool.and_eq_true] at hw
      obtain ⟨w, rfl, hok⟩ := vok_word hw.1 (hf e v he)
      exact addAV_sound hok (adds_evs hf hw.2 hes)

theorem csts_evs {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {f : ExpHOL 64 → AV}
    (hf : ∀ e v, ev s e = some v → VOk Γ Θ (f e) v) :
    ∀ {args : List (ExpHOL 64)} {vs : List (ValueHOL 64)} {cs : List (BitVec 64)},
      AV.csts (args.map f) = some cs → evs s args = some vs →
        vs = cs.map (fun c => (ValueHOL.val (.word c) : ValueHOL 64))
  | [], vs, cs, hc, hv => by
      simp only [List.map_nil, AV.csts, Option.some.injEq] at hc
      simp only [evs, evalListHOLExact, Option.some.injEq] at hv
      subst hc; subst hv; rfl
  | e :: es, vs, cs, hc, hv => by
      obtain ⟨v, vs', rfl, he, hes⟩ := evs_cons_inv hv
      simp only [List.map_cons] at hc
      have hfe := hf e v he
      cases hx : f e with
      | cst c =>
        rw [hx] at hc hfe
        simp only [AV.csts] at hc
        obtain ⟨cs', hcs', rfl⟩ := Option.map_eq_some_iff.mp hc
        obtain ⟨w, rfl, hw⟩ := hfe
        have hw' : w = c := hw
        subst hw'
        rw [csts_evs hf hcs' hes]
        rfl
      | _ => rw [hx] at hc; simp [AV.csts] at hc

theorem map_valueWord (cs : List (BitVec 64)) :
    (cs.map fun c => (ValueHOL.val (.word c) : ValueHOL 64)).map valueWord = cs := by
  induction cs with
  | nil => rfl
  | cons c cs ih => simp only [List.map_cons, ih]; rfl

theorem obj_bounds {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) : heapBase ≤ o.lo ∧ o.lo + o.size ≤ scratchEnd := by
  have h1 := (hL.1 o ho).2.2.2.2
  have he : heapEnd ≤ scratchEnd := by decide
  have hb : heapBase ≤ heapEnd := by decide
  unfold Ptrs.Ordered at hord
  unfold Region.Live at h1
  split at h1 <;> omega

theorem nzAV_sound {C : Cfg} {p : Ptrs} {Γ : Gam} {Θ : List (BitVec 64 × Nat)}
    (hord : p.Ordered) (hL : Layout C p Γ) {u : AV} {x : BitVec 64}
    (h : VOk Γ Θ u (.val (.word x))) (hn : nzAV u = true) : x ≠ 0 := by
  cases u with
  | cst c =>
    obtain ⟨w, hw, hwc⟩ := h
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    have hwc' : w = c := hwc
    subst hw hwc'
    simpa [nzAV] using hn
  | gp t off =>
    obtain ⟨w, hw, ob, hob, -, hwe⟩ := h
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    subst hw
    have hb := obj_bounds hord hL hob
    have hoff : off ≤ 4294967296 := Nat.le_of_ble_eq_true (by simpa [nzAV] using hn)
    have hs : scratchEnd < 4294967296 := by decide
    have hpos : 0 < heapBase := by decide
    intro h0
    rw [hwe] at h0
    have := congrArg BitVec.toNat h0
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : off < 2 ^ 64),
      Nat.mod_eq_of_lt (by unfold Obj.lo at hb; omega)] at this
    unfold Obj.lo at hb
    simp at this
    omega
  | _ => simp [nzAV] at hn

theorem cmpNZ_sound {C : Cfg} {p : Ptrs} {Γ : Gam} {Θ : List (BitVec 64 × Nat)}
    (hord : p.Ordered) (hL : Layout C p Γ) {o : Cmp} {u v : AV} {x y : BitVec 64}
    (hu : VOk Γ Θ u (.val (.word x))) (hv : VOk Γ Θ v (.val (.word y))) :
    VOk Γ Θ (cmpNZ o u v)
      (.val (.word (if Flapjack.Compiler.Encoders.Asm.wordCmpHOL o x y then 1 else 0))) := by
  have hne : ((nzAV u && v == .cst 0) || (u == .cst 0 && nzAV v)) = true → x ≠ y := by
    intro h
    simp only [Bool.or_eq_true, Bool.and_eq_true, beq_iff_eq] at h
    rcases h with ⟨h1, rfl⟩ | ⟨rfl, h2⟩
    · have hx := nzAV_sound hord hL hu h1
      obtain ⟨w, hw, hwc⟩ := hv
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      have hwc' : w = 0 := hwc
      subst hw hwc'
      exact hx
    · have hy := nzAV_sound hord hL hv h2
      obtain ⟨w, hw, hwc⟩ := hu
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      have hwc' : w = 0 := hwc
      subst hw hwc'
      exact fun h => hy h.symm
  unfold cmpNZ
  split
  · rename_i hb
    have := hne hb
    have hf : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .equal x y = false := by
      simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, this]
    rw [hf]
    exact ⟨0, rfl, rfl⟩
  · rename_i hb
    have := hne hb
    have hf : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notEqual x y = true := by
      simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, this]
    rw [hf]
    exact ⟨1, rfl, rfl⟩
  · exact ⟨_, rfl, trivial⟩

theorem aev_sound {C : Cfg} {H : Hooks σ} {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {A : AEnv}
    (hG : G C H Γ s) (hloc : LocalsOK A Γ Θ s)
    (hns : ∀ a, s.memaddrs a → heapBase ≤ a.toNat) :
    ∀ n e v, ev s e = some v → VOk Γ Θ (aev C A n e) v := by
  obtain ⟨p, -, hord, hL, hF, -, hGl, -⟩ := hG
  intro n
  induction n with
  | zero => intro e v h; exact wordy_vok h
  | succ n ih =>
    intro e v h
    unfold aev
    split
    · -- const
      rename_i c
      simp only [ev, evalHOLExact, Option.some.injEq] at h
      exact ⟨c, h.symm, rfl⟩
    · -- local
      rename_i x
      split
      · rename_i av hx
        obtain ⟨v', hv', hok⟩ := hloc x av hx
        have h' : s.locals.lookup x = some v := h
        rw [hv'] at h'
        cases h'
        exact hok
      · trivial
    · -- global
      rename_i g
      have hg' : s.globals.lookup g = some v := h
      have key : ∀ k, C.GT.lookup g = some k → ∃ w, v = .val (.word w) ∧ Fits Γ k w := by
        intro k hk
        obtain ⟨w, hw, hf⟩ := hGl g k hk
        unfold gword at hw
        rw [hg'] at hw
        refine ⟨w, ?_, hf⟩
        cases v with
        | val x => cases x with
          | word w' => simp only [Option.some.injEq] at hw; rw [hw]
        | rStruct _ => simp at hw
        | nStruct _ _ => simp at hw
      unfold gAV
      cases hk : C.GT.lookup g with
      | none => trivial
      | some k =>
        obtain ⟨w, rfl, hf⟩ := key k hk
        cases k with
        | ptr t => exact ⟨w, rfl, slotAV_sound (Θ := Θ) hf⟩
        | nptr t => exact ⟨w, rfl, hf⟩
        | uptr ts => exact ⟨w, rfl, hf⟩
        | bnd => exact ⟨w, rfl, trivial⟩
        | scalar => exact ⟨w, rfl, trivial⟩
        | prot => exact ⟨w, rfl, trivial⟩
    · -- a + b
      rename_i a b
      obtain ⟨w, rfl⟩ := ev_wordy (e := .op .add [a, b]) rfl h
      split
      · rename_i hwa hwb
        obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv h
        obtain ⟨y', hy', hay⟩ := vok_word hwa (ih a _ hy)
        obtain ⟨z', hz', haz⟩ := vok_word hwb (ih b _ hz)
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hy' hz'
        subst hy' hz'
        exact word_vok (addAV_isWord _ _) (addAV_sound hay haz)
      · exact ⟨w, rfl, trivial⟩
    · -- an n-ary sum
      rename_i args _
      obtain ⟨w0, rfl⟩ := ev_wordy (e := .op .add args) rfl h
      split
      · rename_i hw
        obtain ⟨vs, hvs, hv⟩ := ev_op_some h
        have hok := adds_evs ih hw hvs
        simp only [wordOpHOL, wordOp, Option.map_some, Option.some.injEq, ValueHOL.val.injEq,
          HolWordLab.word.injEq] at hv
        rw [hv] at hok
        exact word_vok (addsAV_isWord _) hok
      · exact ⟨w0, rfl, trivial⟩
    · -- an operator on constants
      rename_i o args _ _
      obtain ⟨w0, rfl⟩ := ev_wordy (e := .op o args) rfl h
      split
      · rename_i cs hcs
        split
        · rename_i w hw
          obtain ⟨vs, hvs, hv⟩ := ev_op_some h
          rw [csts_evs ih hcs hvs, map_valueWord, hw] at hv
          simp only [Option.map_some, Option.some.injEq, ValueHOL.val.injEq,
            HolWordLab.word.injEq] at hv
          exact ⟨w0, rfl, hv.symm⟩
        · exact ⟨w0, rfl, trivial⟩
      · exact ⟨w0, rfl, trivial⟩
    · -- a multiplication of constants
      rename_i o args
      obtain ⟨w0, rfl⟩ := ev_wordy (e := .panop o args) rfl h
      split
      · rename_i cs hcs
        split
        · rename_i w hw
          obtain ⟨vs, hvs, hv⟩ := ev_panop_some h
          rw [csts_evs ih hcs hvs, map_valueWord, hw] at hv
          simp only [Option.map_some, Option.some.injEq, ValueHOL.val.injEq,
            HolWordLab.word.injEq] at hv
          exact ⟨w0, rfl, hv.symm⟩
        · exact ⟨w0, rfl, trivial⟩
      · exact ⟨w0, rfl, trivial⟩
    · -- a comparison of constants
      rename_i o a b
      obtain ⟨x', y', ha, hb, rfl⟩ := ev_cmp_inv h
      split
      · rename_i x y hx hy
        have hia := ih a _ ha
        have hib := ih b _ hb
        rw [hx] at hia
        rw [hy] at hib
        obtain ⟨x'', hx'', hxx⟩ := hia
        obtain ⟨y'', hy'', hyy⟩ := hib
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hx'' hy''
        have e1 : x' = x := hx''.trans hxx
        have e2 : y' = y := hy''.trans hyy
        subst e1 e2
        split
        · rename_i hc
          rw [hc]
          exact ⟨1, rfl, rfl⟩
        · rename_i hc
          rw [hc]
          exact ⟨0, rfl, rfl⟩
      · exact cmpNZ_sound hord hL (ih a _ ha) (ih b _ hb)
    · -- a shift of constants
      rename_i o a b
      obtain ⟨w0, rfl⟩ := ev_wordy (e := .shift o a b) rfl h
      split
      · rename_i x y hx hy
        split
        · rename_i w hw
          obtain ⟨x', y', ha, hb, hv⟩ := ev_shift_some h
          have hia := ih a _ ha
          have hib := ih b _ hb
          rw [hx] at hia
          rw [hy] at hib
          obtain ⟨x'', hx'', hxx⟩ := hia
          obtain ⟨y'', hy'', hyy⟩ := hib
          simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hx'' hy''
          have e1 : x' = x := hx''.trans hxx
          have e2 : y' = y := hy''.trans hyy
          subst e1 e2
          rw [hw] at hv
          simp only [Option.map_some, Option.some.injEq, ValueHOL.val.injEq,
            HolWordLab.word.injEq] at hv
          exact ⟨w0, rfl, hv.symm⟩
        · exact ⟨w0, rfl, trivial⟩
      · exact ⟨w0, rfl, trivial⟩
    · -- one-word load
      rename_i a
      obtain ⟨x, hx, hdom, rfl⟩ := ev_load_one h
      obtain ⟨w, hw⟩ := val_word' (s.memory x)
      have hv : ValueHOL.val (s.memory x) = .val (.word (rd s.memory x)) := by
        rw [hw]; simp [rd, hw]
      split
      · rename_i t o ha
        split
        · rename_i h8 hle
          have hia := ih a _ hx
          rw [ha] at hia
          obtain ⟨x', hx', ob, hob, ht, hxe'⟩ := hia
          have hxe : x = ob.base + BitVec.ofNat 64 o := by
            simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hx'
            rw [hx']; exact hxe'
          have hsz := (hL.1 ob hob).2.2.2.1
          have hk : ob.HasSlot (o / 8) := by
            unfold Obj.HasSlot
            have := Nat.le_of_ble_eq_true hle
            rw [ht] at hsz
            omega
          have hc : ob.cell (o / 8) = ob.base + BitVec.ofNat 64 o := by
            unfold Obj.cell
            congr 2
            omega
          have hf := hF ob hob (o / 8) hk
          rw [hc, ht, ← hxe] at hf
          rw [hv]
          exact word_vok (slotAV_isWord _) (slotAV_sound hf)
        · exact ⟨w, by rw [hw], trivial⟩
      · -- through a nullable pointer
        split
        · rename_i ts o hnp
          split
          · rename_i k hk
            obtain ⟨h8, hmax, hall⟩ := npSlot_spec hk
            obtain ⟨b, hxb, hcase⟩ := npOf_sound hnp (ih a _ hx)
            have hbig : heapBase < 2 ^ 64 := by decide
            rcases hcase with hb | ⟨ob, hob, hbb, ht⟩
            · exfalso
              have h1 := hns x hdom
              have hxn : x.toNat = b.toNat + o := by
                rw [hxb, BitVec.toNat_add, BitVec.toNat_ofNat]
                unfold npMax nullMax at *
                rw [Nat.mod_eq_of_lt (by omega : o < 2 ^ 64), Nat.mod_eq_of_lt (by omega)]
              unfold npMax nullMax at *
              omega
            · obtain ⟨hmin, hsl⟩ := hall ob.ty ht
              have hsz := (hL.1 ob hob).2.2.2.1
              have hk' : ob.HasSlot (o / 8) := by unfold Obj.HasSlot; omega
              have hc : ob.cell (o / 8) = x := by
                rw [hxb, ← hbb]
                unfold Obj.cell
                congr 2
                omega
              have hf := hF ob hob (o / 8) hk'
              rw [hc, hsl] at hf
              rw [hv]
              exact word_vok (slotAV_isWord _) (slotAV_sound hf)
          · exact ⟨w, by rw [hw], trivial⟩
        · exact ⟨w, by rw [hw], trivial⟩
    · -- a shaped load
      rename_i sh a _
      unfold shAV
      split
      · rename_i k hk
        simp only [ev, evalHOLExact] at h
        split at h
        · split at h
          · show shW (shapeOfHOLExact v) = some k
            rw [load_shape sh _ _ _ _ _ v k h hk]; exact hk
          · cases h
        · cases h
      · trivial
    · -- rstruct
      rename_i es
      split
      · rename_i hall
        simp only [ev, evalHOLExact] at h
        obtain ⟨vs, hvs, rfl⟩ := Option.map_eq_some_iff.mp h
        obtain ⟨hl, hw⟩ := evs_wordy hall hvs
        show shW (shapeOfHOLExact (ValueHOL.rStruct vs)) = some es.length
        rw [← hl]
        exact shW_words hw
      · trivial
    · -- everything else
      exact wordy_vok h

end sound

end InitECandidate.Solver.MemSafe
