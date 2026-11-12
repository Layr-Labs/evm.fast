import InitECandidate.Solver.MemSafe.Summary
import InitECandidate.Solver.MemSafe.HoareX
import InitECandidate.Solver.MemSafe.Caps

/-!
# The checker's abstract domain and the activation invariant (M1)

* `AV`: abstract words. `top`; `cst c`; `gp t o` (the base of a `Γ` object of type `t`, plus
  byte offset `o`); `fk k` (a word fitting a nullable kind `k`); `tmp k o` (temporary `k` of
  the activation, plus `o`).
* `TD`: a temporary's size and provenance (`TK`: allocated in this activation, the buffer
  argument `i`, or an open allocator window `win rg`, whose invariant is `WinOK`). `AEnv`: abstract word locals and temporaries (`none` = dead).
* `Act`: what is fixed for one activation of a checked function: configuration, hooks,
  signature, arguments, entry state, entry typing, entry allocator state.
* `Heap a Γ p Θ s`: the heap part of the activation invariant — `G` for `Γ`, monotone
  allocator, `Γ` extends the entry typing in fresh space only, memory changed only in the
  entry footprint, protected globals kept, concrete temporaries `Θ` writable.
* `Inv a A s`: `Heap` plus the locals described by `A`.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- Abstract values. `unk`: nothing known (any shape); `wide n`: a value of `n` flattened
words; the others are one word: `top` (any word), `cst c`, `gp t o`, `fk k`, `tmp k o`, and
`np ts o` (a null value or the base of a `Γ` object of a type in `ts`, plus `o`). -/
inductive AV where
  | unk
  | top
  | cst (c : BitVec 64)
  | gp (t : Nat) (o : Nat)
  | fk (k : FK)
  | tmp (k : Nat) (o : Nat)
  | wide (n : Nat)
  | np (ts : List Nat) (o : Nat)
  deriving DecidableEq, Repr

/-- The provenance of a temporary: allocated in this activation, the buffer argument `i`, or
an open allocator window of region `rg` (a mark token, of size `0`). -/
inductive TK where
  | fresh
  | arg (i : Nat)
  | win (rg : Region)
  deriving DecidableEq, Repr

/-- A temporary: size and provenance. -/
structure TD where
  size : Nat
  kind : TK
  deriving DecidableEq, Repr

/-- Abstract environment: word locals with information, temporaries (`none` = dead). -/
structure AEnv where
  L : List (MlS × AV)
  T : List (Option TD)
  deriving Repr, DecidableEq

/-- What is fixed for one activation. -/
structure Act (σ : Type) where
  C : Cfg
  H : Hooks σ
  sg : Sig
  vs : List (ValueHOL 64)
  s0 : State σ
  Γ0 : Gam
  p0 : Ptrs
  /-- the base configuration (`C` is it with the capability globals upgraded) -/
  Cb : Cfg := C
  caps : List Cap := []

variable {σ : Type}

mutual
/-- The number of flattened words of a value of shape `sh` (`none` if `sh` names a struct). -/
def shW : ShapeHOL → Option Nat
  | .one => some 1
  | .comb shs => shWs shs
  | .named _ => none
def shWs : List ShapeHOL → Option Nat
  | [] => some 0
  | sh :: shs => match shW sh, shWs shs with
    | some a, some b => some (a + b)
    | _, _ => none
end

/-- Concrete meaning of a one-word abstract value, for typing `Γ` and temporaries `Θ`. -/
def AVok (Γ : Gam) (Θ : List (BitVec 64 × Nat)) : AV → BitVec 64 → Prop
  | .cst c, w => w = c
  | .gp t o, w => ∃ ob ∈ Γ, ob.ty = t ∧ w = ob.base + BitVec.ofNat 64 o
  | .fk k, w => Fits Γ k w
  | .tmp k o, w => ∃ q n, Θ[k]? = some (q, n) ∧ w = q + BitVec.ofNat 64 o
  | .np ts o, w => ∃ b, w = b + BitVec.ofNat 64 o ∧
      (b.toNat < nullMax ∨ ∃ ob ∈ Γ, ob.base = b ∧ ob.ty ∈ ts)
  | _, _ => True

/-- Concrete meaning of an abstract value. -/
def VOk (Γ : Gam) (Θ : List (BitVec 64 × Nat)) : AV → ValueHOL 64 → Prop
  | .unk, _ => True
  | .wide n, v => shW (shapeOfHOLExact v) = some n
  | av, v => ∃ w, v = .val (.word w) ∧ AVok Γ Θ av w

/-- The cells the activation may have changed since entry. -/
def Act.Foot (a : Act σ) (x : BitVec 64) : Prop :=
  WCell a.C a.Γ0 x ∨ ArgCells a.sg.params a.vs x ∨ ¬ a.p0.Allocated x.toNat ∨
    (ProtCell a.C a.Γ0 x ∧ CapPW a.caps a.s0 a.Γ0 x)

/-- Set the allocator pointer of a region. -/
def Ptrs.set (p : Ptrs) : Region → Nat → Ptrs
  | .heap, v => ⟨v, p.fp, p.sp⟩
  | .fmem, v => ⟨p.hp, v, p.sp⟩
  | .scratch, v => ⟨p.hp, p.fp, v⟩

/-- An open window of region `rg` with token `q`: the state after releasing it (the allocator
of `rg` set back to `q`) is between the entry state and the current one, keeps every object
live, and every object cell is still old or fresh with respect to it. -/
def WinOK (a : Act σ) (Γ : Gam) (p : Ptrs) (rg : Region) (q : BitVec 64) : Prop :=
  q.toNat % 8 = 0 ∧ a.p0.Mono (p.set rg q.toNat) ∧ (p.set rg q.toNat).Mono p ∧
    (∀ o ∈ Γ, (a.C.ty o.ty).region.Live (p.set rg q.toNat) o.lo o.size) ∧
    NewFresh a.Γ0 Γ a.p0 (p.set rg q.toNat)

/-- A live temporary: writable with any data, of its provenance; or an open window. -/
def TmpOK (a : Act σ) (Γ : Gam) (p : Ptrs) (td : TD) (q : BitVec 64) : Prop :=
  BufOK a.C Γ p q.toNat td.size ∧
    match td.kind with
    | .fresh => q.toNat % 8 = 0 ∧ ∀ x, Overlap q.toNat td.size x → ¬ a.p0.Allocated x.toNat
    | .arg _ => ∀ x, Overlap q.toNat td.size x → ArgCells a.sg.params a.vs x
    | .win rg => td.size = 0 ∧ WinOK a Γ p rg q

def TempsOK (a : Act σ) (A : AEnv) (Γ : Gam) (p : Ptrs) (Θ : List (BitVec 64 × Nat)) : Prop :=
  Θ.length = A.T.length ∧
    ∀ (k : Nat) (td : TD), A.T[k]? = some (some td) →
      ∃ q, Θ[k]? = some (q, td.size) ∧ TmpOK a Γ p td q

def LocalsOK (A : AEnv) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) (s : State σ) : Prop :=
  ∀ x av, A.L.lookup x = some av → ∃ v, s.locals.lookup x = some v ∧ VOk Γ Θ av v

/-- The heap part of the activation invariant. -/
def Heap (a : Act σ) (Γ : Gam) (p : Ptrs) (s : State σ) : Prop :=
  G a.C a.H Γ s ∧ ptrsOf s = some p ∧ a.p0.Mono p ∧ Ext a.Γ0 Γ ∧ NewFresh a.Γ0 Γ a.p0 p ∧
    ModifiesOnly a.Foot a.s0.memory s.memory ∧
    (∀ g ∈ a.C.PG, g ∉ a.sg.gw → s.globals.lookup g = a.s0.globals.lookup g) ∧
    (a.sg.grows = false → NewFresh a.Γ0 Γ a.p0 a.p0)

/-- **The activation invariant.** -/
def Inv (a : Act σ) (A : AEnv) (s : State σ) : Prop :=
  ∃ Γ p Θ, Heap a Γ p s ∧ TempsOK a A Γ p Θ ∧ LocalsOK A Γ Θ s

/-- The invariant without locals (after `return` / exceptions, whose state empties them). -/
def InvH (a : Act σ) (s : State σ) : Prop := ∃ Γ p, Heap a Γ p s

theorem invH_of_inv {a : Act σ} {A : AEnv} {s : State σ} (h : Inv a A s) : InvH a s :=
  let ⟨Γ, p, _, hh, _, _⟩ := h; ⟨Γ, p, hh⟩

/-! ## Basic transport lemmas -/

/-- `Heap` depends on memory, globals, `memaddrs`, `be`, and nothing else. -/
theorem heap_congr {a : Act σ} (hH : HooksLawful a.C a.H) {Γ : Gam} {p : Ptrs}
    {s t : State σ} (hm : t.memory = s.memory) (hg : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hb : t.be = s.be) (h : Heap a Γ p s) : Heap a Γ p t := by
  obtain ⟨⟨p1, hp1, hord, hL, hF, hT, hGl, hW⟩, hps, hmono, hext, hnf, hmod, hpg, hng⟩ := h
  have hpt : ptrsOf t = ptrsOf s := by unfold ptrsOf gword; rw [hg]
  refine ⟨⟨p1, hpt ▸ hp1, hord, hL, hm ▸ hF, hm ▸ hT, ?_, ?_⟩, hpt ▸ hps, hmono, hext, hnf,
    hm ▸ hmod, hg ▸ hpg, hng⟩
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, by unfold gword; rw [hg]; exact hv, hf⟩
  · exact fun o ho => (hH.2 Γ s t o (hW o ho) hd hb (fun x _ => by rw [hm])
      (fun g _ => by rw [hg])).1

theorem invH_congr {a : Act σ} (hH : HooksLawful a.C a.H) {s t : State σ}
    (hm : t.memory = s.memory) (hg : t.globals = s.globals) (hd : t.memaddrs = s.memaddrs)
    (hb : t.be = s.be) (h : InvH a s) : InvH a t :=
  let ⟨Γ, p, hh⟩ := h; ⟨Γ, p, heap_congr hH hm hg hd hb hh⟩

/-- `Inv` survives any change keeping memory, globals, `memaddrs`, `be` and the described
locals. -/
theorem inv_congr {a : Act σ} (hH : HooksLawful a.C a.H) {A : AEnv} {s t : State σ}
    (hm : t.memory = s.memory) (hg : t.globals = s.globals) (hd : t.memaddrs = s.memaddrs)
    (hb : t.be = s.be) (hl : ∀ x av, A.L.lookup x = some av → t.locals.lookup x = s.locals.lookup x)
    (h : Inv a A s) : Inv a A t := by
  obtain ⟨Γ, p, Θ, hh, ht, hlo⟩ := h
  refine ⟨Γ, p, Θ, heap_congr hH hm hg hd hb hh, ht, fun x av hx => ?_⟩
  rw [hl x av hx]
  exact hlo x av hx

end InitECandidate.Solver.MemSafe
