import InitECandidate.Solver.Spec.Mpt.Decode.Foot

/-!
# The invariant and the measure of the decode loop

Ghost parameters: the witness predicate `W` with its node-DB argument `DB` and heap bound `H`
(`W DB H M` reads only heap cells in `[heapBase, H)`: `WFrame`), and `sp0`, the
`scratch_ptr` at body entry.

* `WCore … M p T R Mo S N U`: the memory / pointer part, for the local values `top = T`,
  `result = R`, `mode = Mo`, `cur_n = N`, and `S` = `slot` in mode 2, `S` = `cur_p` in mode 1:
  the pointers ordered with `sp ≤ sp0`; `W DB H M`; `T` heads a `WChain` in `[sp, sp0)` whose
  heap blocks lie in `[H, U)`, `U ≤ heap_ptr`, and whose slices lie in `[heapBase, H)`; in
  mode 0 the result is `0` or a node above `U`; in mode 1 the slice to decode, `[S, S + N)`,
  lies in `[heapBase, H)`; in mode 2 `T ≠ 0` and `slot` is the record's child slot.
* `WI`: `WCore` for the current locals (`WLoc`).
* `wdMu sp0 s = (sp - heapEnd) + wPot M sp sp0 top + mode + 1` while `go ≠ 0`, else `0`.
  A push lowers `sp` by at least 88 and raises the rest by at most 47; every other step lowers
  the potential or the mode term.

The callee hypotheses (`DecPreS H`/`DecQ H` for `_decode_step`, `ResPre W H`/`ResQ H` for
`_resolve_step`, located slices below `H`) are stated here too.
-/

namespace InitECandidate.Solver.Spec.Mpt.Dec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

abbrev State (σ : Type) := PanSemStateFiniteExact 64 σ
abbrev Locs := HolFiniteMapExact MlS (ValueHOL 64)

/-! ## The witness predicate and the callee hypotheses -/

/-- `W db H M` reads only heap cells in `[heapBase, H)`. -/
def WFrame (W : BitVec 64 → Nat → Mem → Prop) : Prop :=
  ∀ db H (M M' : Mem), W db H M →
    (∀ a : BitVec 64, heapBase ≤ a.toNat → a.toNat < H → M' a = M a) → W db H M'

theorem w_benign {W : BitVec 64 → Nat → Mem → Prop} (hW : WFrame W) {db : BitVec 64}
    {H lo hi V : Nat} {M M' : Mem} (h : W db H M) (hB : Benign lo hi V M M') (hHV : H ≤ V) :
    W db H M' :=
  hW _ _ _ _ h fun _ h1 h2 => benign_eq hB (Or.inr ⟨h1, by omega⟩)

/-- `_decode_step(db, p, n)`: the slice `[p, p + n)` lies in the heap below `H ≤ heap_ptr`. -/
def DecPreS (H : Nat) (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ (a : ValueHOL 64) (P N : BitVec 64), vs = [a, .val (.word P), .val (.word N)] ∧
    heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ H ∧ ∃ p : Ptrs, ptrsOf s = some p ∧ H ≤ p.hp

/-- `_decode_step` returns `<0, node>` with `node` null or a fresh heap node (`+32` live), or
`<1, rec>` with `rec` a fresh 88-byte scratch record whose blocks are fresh heap and whose
slices lie in the heap below `H`. -/
def DecQ (H : Nat) (_ : List (ValueHOL 64)) (p p' : Ptrs) (M : Mem) (v : ValueHOL 64) : Prop :=
  ∃ d0 d1 : BitVec 64, v = .rStruct [.val (.word d0), .val (.word d1)] ∧
    (d0 = 0 → d1 = 0 ∨ (p.hp ≤ d1.toNat ∧ d1.toNat + 32 ≤ p'.hp)) ∧
    (d0 ≠ 0 → p'.sp ≤ d1.toNat ∧ d1.toNat + 88 ≤ p.sp ∧ p.hp ≤ (rd M (d1 + 24)).toNat ∧
      RecW M H p'.hp d1 ∧ (rd M (d1 + 8) ≠ 1 → rd M (d1 + 32) = 0))

/-- `_resolve_step(db, p, n)`: the slice `[p, p + n)` lies in the heap below `H ≤ heap_ptr`,
and the node DB `db` is well-formed (`W`) below `H`. -/
def ResPre (W : BitVec 64 → Nat → Mem → Prop) (H : Nat) (vs : List (ValueHOL 64)) (s : State σ) :
    Prop :=
  ∃ (db P N : BitVec 64), vs = [.val (.word db), .val (.word P), .val (.word N)] ∧
    heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ H ∧ ∃ p : Ptrs, ptrsOf s = some p ∧ H ≤ p.hp ∧
      W db H s.memory

/-- `_resolve_step` returns `<0, node, _, _>` with `node` null or a fresh heap node, or
`<1, p', n', h>` with `[p', p' + n')` in the heap below `H`. -/
def ResQ (H : Nat) (_ : List (ValueHOL 64)) (p p' : Ptrs) (_ : Mem) (v : ValueHOL 64) : Prop :=
  ∃ r0 r1 r2 r3 : BitVec 64,
    v = .rStruct [.val (.word r0), .val (.word r1), .val (.word r2), .val (.word r3)] ∧
    (r0 = 0 → r1 = 0 ∨ (p.hp ≤ r1.toNat ∧ r1.toNat + 32 ≤ p'.hp)) ∧
    (r0 ≠ 0 → heapBase ≤ r1.toNat ∧ r1.toNat + r2.toNat ≤ H)

/-! ## The invariant -/

def WCore (W : BitVec 64 → Nat → Mem → Prop) (DB : BitVec 64) (H sp0 : Nat) (M : Mem) (p : Ptrs)
    (T R Mo S N : BitVec 64) (U : Nat) : Prop :=
  sp0 ≤ scratchEnd ∧ heapBase ≤ H ∧ W DB H M ∧ p.Ordered ∧ p.sp ≤ sp0 ∧ H ≤ U ∧ U ≤ p.hp ∧
    WChain M p.sp sp0 H U T ∧
    (Mo ≠ 1 → Mo ≠ 2 → R = 0 ∨ (U ≤ R.toNat ∧ R.toNat + 32 ≤ p.hp)) ∧
    (Mo = 1 → heapBase ≤ S.toNat ∧ S.toNat + N.toNat ≤ H) ∧
    (Mo = 2 → T ≠ 0 ∧ (rd M (T + 8) = 1 → S = 1) ∧ (rd M (T + 8) ≠ 1 → S = rd M (T + 32)))

def WLoc (DB T R Mo S N G : BitVec 64) (L : Locs) : Prop :=
  L.lookup (nm "db") = some (.val (.word DB)) ∧ L.lookup (nm "top") = some (.val (.word T)) ∧
    L.lookup (nm "result") = some (.val (.word R)) ∧
    L.lookup (nm "mode") = some (.val (.word Mo)) ∧
    (Mo = 2 → L.lookup (nm "slot") = some (.val (.word S))) ∧
    (Mo = 1 → L.lookup (nm "cur_n") = some (.val (.word N)) ∧
      L.lookup (nm "cur_p") = some (.val (.word S))) ∧
    L.lookup (nm "go") = some (.val (.word G))

def WI (W : BitVec 64 → Nat → Mem → Prop) (DB : BitVec 64) (H sp0 : Nat) (s : State σ) : Prop :=
  ∃ (p : Ptrs) (T R Mo S N G : BitVec 64) (U : Nat), ptrsOf s = some p ∧
    WLoc DB T R Mo S N G s.locals ∧ WCore W DB H sp0 s.memory p T R Mo S N U

def wdMode (Mo : BitVec 64) : Nat := if Mo = 1 then 1 else if Mo = 2 then 2 else 0

def spOf (s : State σ) : Nat :=
  match ptrsOf s with
  | some p => p.sp
  | none => 0

def wdMu (sp0 : Nat) (s : State σ) : Nat :=
  if wl s (nm "go") = 0 then 0 else
    (spOf s - heapEnd) + wPot s.memory (spOf s) sp0 (wl s (nm "top")) + wdMode (wl s (nm "mode")) + 1

theorem wdMu_of {sp0 : Nat} {s : State σ} {p : Ptrs} {DB T R Mo S N G : BitVec 64}
    (hp : ptrsOf s = some p) (hl : WLoc DB T R Mo S N G s.locals) (hG : G ≠ 0) :
    wdMu sp0 s = (p.sp - heapEnd) + wPot s.memory p.sp sp0 T + wdMode Mo + 1 := by
  unfold wdMu spOf
  rw [wl_of hl.2.2.2.2.2.2, if_neg hG, hp, wl_of hl.2.1, wl_of hl.2.2.2.1]

theorem wdMu_go0 {sp0 : Nat} {s : State σ} (h : s.locals.lookup (nm "go") = some (.val (.word 0))) :
    wdMu sp0 s = 0 := by
  unfold wdMu; rw [wl_of h, if_pos rfl]

/-- The post of one iteration: a normal completion (or `continue`, which the body never
produces) is in the invariant, with a lower measure. -/
def WPost (W : BitVec 64 → Nat → Mem → Prop) (DB : BitVec 64) (H sp0 k : Nat)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  r = none ∨ r = some .continue → WI W DB H sp0 t ∧ wdMu sp0 t < k

/-! ## Locals outside the tracked ones -/

def wdVars : List MlS :=
  [nm "db", nm "top", nm "result", nm "mode", nm "slot", nm "cur_n", nm "go", nm "cur_p"]

theorem wLoc_congr {DB T R Mo S N G : BitVec 64} {L L' : Locs}
    (h : ∀ x ∈ wdVars, L'.lookup x = L.lookup x) (hl : WLoc DB T R Mo S N G L) :
    WLoc DB T R Mo S N G L' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7⟩ := hl
  simp only [wdVars, List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq] at h
  obtain ⟨e1, e2, e3, e4, e5, e6, e7, e8⟩ := h
  exact ⟨e1 ▸ h1, e2 ▸ h2, e3 ▸ h3, e4 ▸ h4, fun h => e5 ▸ h5 h,
    fun h => ⟨e6 ▸ (h6 h).1, e8 ▸ (h6 h).2⟩, e7 ▸ h7⟩

theorem wl_congr' {s t : State σ} {x : MlS} (h : t.locals.lookup x = s.locals.lookup x) :
    wl t x = wl s x := by
  unfold wl; rw [h]

theorem wPost_congr {W : BitVec 64 → Nat → Mem → Prop} {DB : BitVec 64} {H sp0 k : Nat}
    {r : Option (PanSemResultExact 64)} {t t' : State σ} (hm : t'.memory = t.memory)
    (hg : t'.globals = t.globals) (hl : ∀ x ∈ wdVars, t'.locals.lookup x = t.locals.lookup x)
    (h : WPost W DB H sp0 k r t) : WPost W DB H sp0 k r t' := by
  intro hr
  obtain ⟨⟨p, T, R, Mo, S, N, G, U, hp, hloc, hcore⟩, hmu⟩ := h hr
  refine ⟨⟨p, T, R, Mo, S, N, G, U, by rw [ptrsOf_frame hg]; exact hp, wLoc_congr hl hloc,
    by rw [hm]; exact hcore⟩, ?_⟩
  have e : wdMu sp0 t' = wdMu sp0 t := by
    simp only [wdVars, List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp,
      forall_eq] at hl
    unfold wdMu spOf
    rw [wl_congr' hl.2.2.2.2.2.2.1, wl_congr' hl.2.1, wl_congr' hl.2.2.2.1, ptrsOf_frame hg, hm]
  rw [e]; exact hmu

theorem not_wdVar {y : MlS} (hy : wdVars.contains y = false) : ∀ x ∈ wdVars, x ≠ y := by
  intro x hx e
  subst e
  simp [hx] at hy

/-- Restoring a block-local `y ∉ wdVars` keeps the post. -/
theorem wPost_restore {W : BitVec 64 → Nat → Mem → Prop} {DB : BitVec 64} {H sp0 k : Nat}
    {y : MlS} (hy : wdVars.contains y = false) (old : Option (ValueHOL 64))
    {r : Option (PanSemResultExact 64)} {t : State σ} (h : WPost W DB H sp0 k r t) :
    WPost W DB H sp0 k r { t with locals := t.locals.resVarEq (y, old) } :=
  wPost_congr (t := t) (t' := { t with locals := t.locals.resVarEq (y, old) }) rfl rfl
    (fun x hx => lookup_resVarEq_ne _ _ (Ne.symm (not_wdVar hy x hx))) h

/-! ## Straight-line code on exact states -/

theorem hoare_assign_eq {s0 : State σ} {x : MlS} {e : ExpHOL 64} {v : ValueHOL 64}
    (he : ev s0 e = some v) :
    Hoare σ X (fun t => t = s0) (.assign .local x e)
      (fun r t => r = none ∧ t = setVarHOLFinite x v s0) := by
  refine hoare_assign fun t _ ht v' hv' _ => ⟨rfl, ?_⟩
  subst ht
  rw [he] at hv'
  cases hv'
  rfl

theorem hoare_assign_fin {s0 : State σ} {x : MlS} {e : ExpHOL 64} {v : ValueHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (he : ev s0 e = some v)
    (hQ : Q none (setVarHOLFinite x v s0)) :
    Hoare σ X (fun t => t = s0) (.assign .local x e) Q :=
  hoare_post (hoare_assign_eq he) fun _ _ _ _ ⟨hr, ht⟩ => by subst hr; subst ht; exact hQ

theorem hoare_store_eq {s0 : State σ} {a e : ExpHOL 64} {A V : BitVec 64}
    (ha : ev s0 a = some (.val (.word A))) (he : ev s0 e = some (.val (.word V))) :
    Hoare σ X (fun t => t = s0) (.store a e)
      (fun r t => r = none ∧ t = { s0 with memory := upd s0.memory A (.word V) }) := by
  refine hoare_store fun t _ ht w v mem hw hv hmem => ⟨rfl, ?_⟩
  subst ht
  rw [ha] at hw; cases hw
  rw [he] at hv; cases hv
  simp only [flattenHOL] at hmem
  obtain ⟨-, rfl⟩ := stores_one hmem
  rfl

theorem hoare_seq_eq {s0 s1 : State σ} {a b : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (ha : Hoare σ X (fun t => t = s0) a (fun r t => r = none ∧ t = s1))
    (hb : Hoare σ X (fun t => t = s1) b Q) : Hoare σ X (fun t => t = s0) (.seq a b) Q :=
  hoare_seq ha (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre hb fun _ _ h => h.2)

/-! ## Conditions -/

theorem ev_cmpc {s : State σ} {o : Flapjack.Cmp} {e : ExpHOL 64} {x : BitVec 64}
    (h : ev s e = some (.val (.word x))) (k : Nat) :
    ev s (.cmp o e (cw k)) =
      some (.val (.word (if wordCmpHOL o x (BitVec.ofNat 64 k) then 1 else 0))) :=
  ev_cmp h (ev_cw _ k)

/-- In the `then` branch of `if e == k`, `e = k`. -/
theorem eq_of_then {s : State σ} {e : ExpHOL 64} {x : BitVec 64} {k : Nat}
    (h : ev s e = some (.val (.word x)))
    (hc : ∃ w, ev s (.cmp .equal e (cw k)) = some (.val (.word w)) ∧ w ≠ 0) :
    x = BitVec.ofNat 64 k := by
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨a, b, ha, hb, hab⟩ := cmp_true hw hw0
  rw [h] at ha; rw [ev_cw] at hb; cases ha; cases hb
  exact equal_true hab

theorem ne_of_else {s : State σ} {e : ExpHOL 64} {x : BitVec 64} {k : Nat}
    (h : ev s e = some (.val (.word x)))
    (hc : ev s (.cmp .equal e (cw k)) = some (.val (.word 0))) : x ≠ BitVec.ofNat 64 k := by
  obtain ⟨a, b, ha, hb, hab⟩ := cmp_false hc
  rw [h] at ha; rw [ev_cw] at hb; cases ha; cases hb
  exact equal_false hab

theorem ev_rfield_w {s : State σ} {x : MlS} {vs : List (ValueHOL 64)} {i : Nat} {w : BitVec 64}
    (h : s.locals.lookup x = some (.rStruct vs)) (hi : vs[i]? = some (.val (.word w))) :
    ev s (.rfield i (lv x)) = some (.val (.word w)) := by
  rw [ev_rfield (by rw [ev_lv]; exact h)]; exact hi

/-- A one-word load at `x + k`, as a word. -/
theorem ev_ld {s : State σ} {x : MlS} {w : BitVec 64} (hx : s.locals.lookup x = some (.val (.word w)))
    (k : Nat) : ∀ v, ev s (.load .one (.op .add [lv x, cw k])) = some v →
      v = .val (.word (rd s.memory (w + BitVec.ofNat 64 k))) := by
  intro v hv
  rw [ev_ld_inv hx hv, mem_word s.memory (w + BitVec.ofNat 64 k)]

end InitECandidate.Solver.Spec.Mpt.Dec
