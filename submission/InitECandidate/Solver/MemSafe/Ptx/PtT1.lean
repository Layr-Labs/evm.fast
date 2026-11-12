import InitECandidate.Solver.MemSafe.Ptx.PtP14
import InitECandidate.Solver.MemSafe.Ptx.PtEnc
import InitECandidate.Solver.MemSafe.Ptx.PtStm
import InitECandidate.Solver.MemSafe.Ptx.PtEv
import InitECandidate.Solver.MemSafe.Ptx.PtD2

/-!
# F3g: the tail's run invariant `TlS`

After `process_message_call` the walk is re-anchored (`TlA`: the post-call typing `Γ0`, state `s0` and allocator `q0`).
`TlS A ref Z O u Γ p`: `u` is reached from the anchor by typed steps (`Ext`, `NewFresh`, `Mono`, `G`), the globals outside
`cW` are the anchor's, `JrNZ`, `ev` / `cur_cont` small, and the cells `Z` (non-state `prot` cells of the anchor typing)
keep the value `ref a` (initially the anchor's; a store into a cell extends `Z` and updates `ref`).

`TL A ref Z O u := ∃ Γ p, TlS A ref Z O u Γ p`, `PAg B En u := B u ∧ LKE En u`; the combinators are the `PA` ones for this `B`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The tail's anchor. -/
structure TlA (σ : Type) where
  Γ0 : Gam
  s0 : State σ
  q0 : Ptrs
  hq0 : ptrsOf s0 = some q0
  ord : q0.Ordered
  /-- frozen cells: allocated at the anchor, outside its typing (dropped frame-local objects); the tail keeps them -/
  Y : BitVec 64 → Prop
  hY : ∀ a, Y a → ¬ InObj Γ0 a.toNat ∧ q0.Allocated a.toNat
  hY8 : ∀ a, Y a → a.toNat % 8 = 0

/-- `TlS A ref Z O u Γ p`: `O` is a list of heap objects that must persist in the typing (objects created by the tail:
the adopted receipt block, fresh log lists). -/
structure TlS (A : TlA σ) (ref : BitVec 64 → BitVec 64) (Z : BitVec 64 → Prop) (O : List Obj) (u : State σ) (Γ : Gam)
    (p : Ptrs) : Prop where
  hp : ptrsOf u = some p
  mono : A.q0.Mono p
  ext : Ext A.Γ0 Γ
  nf : NewFresh A.Γ0 Γ A.q0 p
  hG : G guestC (HR σ) Γ u
  glob : ∀ g, cW.contains g = false → u.globals.lookup g = A.s0.globals.lookup g
  jr : JrNZ u
  hev : ∃ e, gword u nmEv = some e ∧ e.toNat < nullMax
  hcc : ∃ c, gword u nmCC = some c ∧ c.toNat < nullMax
  hZ : ∀ a, Z a → ∃ o ∈ Γ, (guestC.ty o.ty).region = .heap ∧ guestSt o.ty = false ∧ ∃ k, o.HasSlot k ∧
    (guestC.ty o.ty).slot k = .prot ∧ a = o.cell k
  keep : ∀ a, Z a → rd u.memory a = ref a
  hO : ∀ o ∈ O, ∃ o' ∈ Γ, o'.base = o.base ∧ o'.ty = o.ty ∧ o.size ≤ o'.size
  hOh : ∀ o ∈ O, (guestC.ty o.ty).region = .heap
  kY : ∀ a, A.Y a → rd u.memory a = rd A.s0.memory a

def TL (A : TlA σ) (ref : BitVec 64 → BitVec 64) (Z : BitVec 64 → Prop) (O : List Obj) (u : State σ) : Prop :=
  ∃ Γ p, TlS A ref Z O u Γ p

def PAg (B : State σ → Prop) (En : Env) (u : State σ) : Prop := B u ∧ LKE En u

section tl
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ} {Γ : Gam}
  {p : Ptrs}

theorem tl_ord (h : TlS A ref Z O u Γ p) : p.Ordered := ordered_of_G h.hG h.hp

theorem tl_prot (h : TlS A ref Z O u Γ p) {a : BitVec 64} (ha : Z a) : ProtCell guestC Γ a := by
  obtain ⟨o, ho, -, -, k, hk, hp, rfl⟩ := h.hZ a ha
  exact ⟨o, ho, k, hk, hp, rfl⟩

/-- Non-state `prot` cells persist along `Ext`. -/
theorem nstProt_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') {a : BitVec 64}
    (h : ∃ o ∈ Γ, (guestC.ty o.ty).region = .heap ∧ guestSt o.ty = false ∧ ∃ k, o.HasSlot k ∧
      (guestC.ty o.ty).slot k = .prot ∧ a = o.cell k) :
    ∃ o ∈ Γ', (guestC.ty o.ty).region = .heap ∧ guestSt o.ty = false ∧ ∃ k, o.HasSlot k ∧
      (guestC.ty o.ty).slot k = .prot ∧ a = o.cell k := by
  obtain ⟨o, ho, hr, hst, k, hk, hp, rfl⟩ := h
  obtain ⟨o1, ho1, hb, ht, hs⟩ := hx o ho
  refine ⟨o1, ho1, by rw [ht]; exact hr, by rw [ht]; exact hst, k, ?_, by rw [ht]; exact hp, by unfold Obj.cell; rw [hb]⟩
  unfold Obj.HasSlot at hk ⊢; omega

/-- Frozen cells stay outside the typing and allocated. -/
theorem tl_yout (h : TlS A ref Z O u Γ p) {a : BitVec 64} (ha : A.Y a) :
    ¬ InObj Γ a.toNat ∧ p.Allocated a.toNat := by
  obtain ⟨hn, hal⟩ := A.hY a ha
  refine ⟨fun ⟨o, ho, h1, h2⟩ => ?_, allocated_mono h.mono hal⟩
  rcases h.nf o ho a h1 h2 with ⟨o0, ho0, -, -, h3, h4⟩ | hf
  · exact hn ⟨o0, ho0, h3, h4⟩
  · exact fresh_not_alloc A.ord (tl_ord h) h.mono hf hal

theorem tl_y_ne (h : TlS A ref Z O u Γ p) {c : BitVec 64} (hc : InObj Γ c.toNat) {a : BitVec 64} (ha : A.Y a) :
    a ≠ c := fun e => (tl_yout h ha).1 (e ▸ hc)

theorem tl_layout (h : TlS A ref Z O u Γ p) : Layout guestC p Γ := by
  obtain ⟨q, hq, -, hL, -⟩ := h.hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans h.hp)
  exact hL

/-- Only the locals and the clock changed. -/
theorem tl_loc (h : TlS A ref Z O u Γ p) (l : Locs) (c : Nat) : TlS A ref Z O { u with locals := l, clock := c } Γ p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14⟩ := h
  exact ⟨(ptrsOf_congr rfl).trans h1, h2, h3, h4, (G_locFree Hooks.guestHooksR_lawful u l c).mpr h5, h6,
    jrNZ_congr (s := u) rfl h7, h8, h9, h10, h11, h12, h13, h14⟩

theorem tl_set (h : TlS A ref Z O u Γ p) (n : MlS) (v : ValueHOL 64) : TlS A ref Z O (setVarHOLFinite n v u) Γ p :=
  tl_loc h _ _

theorem argCells_any {Y : BitVec 64 → Prop} {ps : List InitECandidate.Solver.MemSafe.PT} (vs : List (ValueHOL 64)) (h : ∀ pt ∈ ps, pt = InitECandidate.Solver.MemSafe.PT.any) (a : BitVec 64) :
    ArgCells ps vs a → ¬ Y a := by
  intro hA
  exfalso
  obtain ⟨i, w, -, ⟨n, hn, -⟩ | ⟨j, c, d, x, hn, -, -⟩⟩ := hA
  · have := h _ (List.mem_of_getElem? hn); cases this
  · have := h _ (List.mem_of_getElem? hn); cases this

theorem argCells_nb {Y : BitVec 64 → Prop} {ps : List InitECandidate.Solver.MemSafe.PT} (vs : List (ValueHOL 64))
    (h : ∀ pt ∈ ps, (∀ n, pt ≠ InitECandidate.Solver.MemSafe.PT.buf n) ∧
      (∀ i c d, pt ≠ InitECandidate.Solver.MemSafe.PT.bufArg i c d)) (a : BitVec 64) :
    ArgCells ps vs a → ¬ Y a := by
  intro hA
  exfalso
  obtain ⟨i, w, -, ⟨n, hn, -⟩ | ⟨j, c, d, x, hn, -, -⟩⟩ := hA
  · exact (h _ (List.mem_of_getElem? hn)).1 n rfl
  · exact (h _ (List.mem_of_getElem? hn)).2 j c d rfl

/-- **A summarized call** (any footprint `PW` that misses `Z`) extends the run. -/
theorem tl_core {sg : Sig} {PW : BitVec 64 → Prop} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    {Γ' : Gam} {t : State σ} {p' : Ptrs} (h : TlS A ref Z O u Γ p)
    (hc : SumCore guestC (HR σ) sg (fun a => ProtCell guestC Γ a ∧ PW a) Γ u vs r t Γ' p p')
    (hargs : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γ a)
    (hargsY : ∀ a, ArgCells sg.params vs a → ¬ A.Y a)
    (hZW : ∀ a, Z a → ¬ PW a)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJo : JrOut sg.gw)
    (hgl : ∀ g, cW.contains g = false → t.globals.lookup g = u.globals.lookup g) :
    TlS A ref Z O t Γ' p' := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hglob := hc.2.2.2.2.2.2.2.1
  have hkp := Frames.sumCore_prot hc h.hG hargs
  refine ⟨hc.2.1, mono_trans h.mono hc.2.2.1, ext_trans h.ext hc.2.2.2.1,
    newFresh_trans h.mono hc.2.2.1 h.nf hc.2.2.2.2.1, hc.2.2.2.2.2.1, fun g hg => (hgl g hg).trans (h.glob g hg),
    jrNZ_sumCore (by decide) hJo hc h.jr, ?_, ?_, fun a ha => nstProt_ext hc.2.2.2.1 (h.hZ a ha), ?_, ?_, h.hOh, ?_⟩
  · obtain ⟨e, he, hs⟩ := h.hev
    exact ⟨e, by unfold gword; rw [hglob _ hF.pgEv hgw.1]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := h.hcc
    exact ⟨e, by unfold gword; rw [hglob _ hF.pgCC hgw.2]; exact he, hs⟩
  · intro a ha
    have := hkp a (tl_prot h ha) (hZW a ha)
    have h1 : rd t.memory a = rd u.memory a := by unfold rd; rw [this]
    exact h1.trans (h.keep a ha)
  · intro o ho
    obtain ⟨o1, ho1, hb1, ht1, hs1⟩ := h.hO o ho
    obtain ⟨o2, ho2, hb2, ht2, hs2⟩ := hc.2.2.2.1 o1 ho1
    exact ⟨o2, ho2, hb2.trans hb1, ht2.trans ht1, le_trans hs1 hs2⟩
  · intro a ha
    obtain ⟨hn, hal⟩ := tl_yout h ha
    have := mem_outside_keep h.hG hc (fun a h => h.1) hn hal (fun hh => hargsY a hh ha)
    have h1 : rd t.memory a = rd u.memory a := by unfold rd; rw [this]
    exact h1.trans (h.kY a ha)

end tl

end InitECandidate.Solver.MemSafe.Ptx
