import InitECandidate.Solver.MemSafe.Fq.Tail

set_option autoImplicit false

/-!
# `fq12_inv`: the entry, the six allocations and the set-up

```
var mark = heap_mark();  var r0 = alloc(416); ... var tmp = alloc(416);       (r0 r1 s0 s1 q tmp)
memzero(r0, 416); st r0, ..; st r0 + 192, ..; st r0 + 384, ..;
memzero(r1, 416); memcpy(r1, a, 384); memzero(s0, 416); memzero(s1, 416); st s1, ..;
outer loop; tail
```
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Fq
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Mod

variable {σ : Type} {X : Ctx 64}

/-! ## The set-up -/

theorem hval_c4 {s : State σ} {v : ValueHOL 64} {a b c d : Nat}
    (h : ev s (Spec.Fq12.c4 a b c d) = some v) : (flattenHOL v).length = 4 := by
  rw [ev_c4] at h
  cases h
  exact flatten_len4 rfl

/-- A four-word constant store into the block `x`, at byte offset `off`. -/
theorem stBlk {a : Act σ} (ce : CI σ X a) (g : FG) (hbo : BO a (bs6 g) (K6 g)) {x : String}
    (hx : PtrN x) {ea e4 : ExpHOL 64} {off : Nat} (hoff : off + 32 ≤ 416)
    (hea : ∀ (s : State σ) (w0 : BitVec 64), Lk s.locals x (V w0) →
      ev s ea = some (V (w0 + BitVec.ofNat 64 off)))
    (hval : ∀ (s : State σ) (v : ValueHOL 64), ev s e4 = some v → (flattenHOL v).length = 4) :
    HoareG σ X (PK a (K6 g) g.mkr (OL g)) (.store ea e4) (SPK a (K6 g) g.mkr (OL g)) := by
  refine hoareG_st4K ce.ha ce.hgrow ce.hL0 ?_ (fun s hL v hv => hval s v hv)
  intro s _ hL Γ p he hh hK w hw
  obtain ⟨w0, hw0, hm⟩ := hL.pb hx
  rw [hea s w0 hw0] at hw
  cases hw
  obtain ⟨hlo, hb8, hhi⟩ := blk_bounds hbo hm
  have hlt := heap_lt64 hh
  unfold K6 at hhi hK
  have e : (w0 + BitVec.ofNat 64 off).toNat = w0.toNat + off := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := off) (by omega),
      Nat.mod_eq_of_lt (by omega)]
  rw [e]
  exact ⟨w0.toNat, 416, hb8, hlo, hhi, by omega, by omega⟩

/-- The set-up statements, then the outer loop and the tail. -/
theorem setup_hoare {a : Act σ} (ce : CI σ X a) (g : FG) (hbo : BO a (bs6 g) (K6 g))
    (hout : OutD a g.d) :
    HoareG σ X (PK a (K6 g) g.mkr (OL g))
      (Spec.Fq12.setupP (.seq Spec.Fq12.outerLoop Spec.Fq12.finTail)) (HQa a) := by
  have hz : ∀ x : String, PtrN x → HoareG σ X (PK a (K6 g) g.mkr (OL g))
      (callD (nm "memzero") [lv (nm x), cw 416]) (SPK a (K6 g) g.mkr (OL g)) :=
    fun x hx => callMzP ce g hbo (L := OL g) (x := x) (n := 416) (le_refl _)
      (fun m h => (h.pb hx))
  have h0 : ∀ (s : State σ) (w0 : BitVec 64), Lk s.locals "r0" (V w0) →
      ev s (lv (nm "r0")) = some (V (w0 + BitVec.ofNat 64 0)) := by
    intro s w0 h; rw [Lk.ev h]; simp
  have h1 : ∀ (s : State σ) (w0 : BitVec 64), Lk s.locals "r0" (V w0) →
      ev s (.op .add [lv (nm "r0"), cw 192]) = some (V (w0 + BitVec.ofNat 64 192)) :=
    fun s w0 h => ev_add2 (Lk.ev h) (ev_cw s 192)
  have h2 : ∀ (s : State σ) (w0 : BitVec 64), Lk s.locals "r0" (V w0) →
      ev s (.op .add [lv (nm "r0"), cw 384]) = some (V (w0 + BitVec.ofNat 64 384)) :=
    fun s w0 h => ev_add2 (Lk.ev h) (ev_cw s 384)
  have h3 : ∀ (s : State σ) (w0 : BitVec 64), Lk s.locals "s1" (V w0) →
      ev s (lv (nm "s1")) = some (V (w0 + BitVec.ofNat 64 0)) := by
    intro s w0 h; rw [Lk.ev h]; simp
  have r0 : PtrN "r0" := Or.inl rfl
  have r1 : PtrN "r1" := Or.inr (Or.inl rfl)
  have s0 : PtrN "s0" := Or.inr (Or.inr (Or.inl rfl))
  have s1 : PtrN "s1" := Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  unfold Spec.Fq12.setupP Spec.Fq12.callN
  refine hoareG_seqK (K := K6 g) (MK := g.mkr) (L := OL g) (hz "r0" r0) ?_
  refine hoareG_seqK (K := K6 g) (MK := g.mkr) (L := OL g)
    (stBlk ce g hbo r0 (off := 0) (by omega) h0 (fun s v hv => hval_c4 hv)) ?_
  refine hoareG_seqK (K := K6 g) (MK := g.mkr) (L := OL g)
    (stBlk ce g hbo r0 (off := 192) (by omega) h1 (fun s v hv => hval_c4 hv)) ?_
  refine hoareG_seqK (K := K6 g) (MK := g.mkr) (L := OL g)
    (stBlk ce g hbo r0 (off := 384) (by omega) h2 (fun s v hv => hval_c4 hv)) ?_
  refine hoareG_seqK (K := K6 g) (MK := g.mkr) (L := OL g) (hz "r1" r1) ?_
  refine hoareG_seqK (K := K6 g) (MK := g.mkr) (L := OL g)
    (callMcP ce g hbo (L := OL g) (x := "r1") (y := "a") (n := 384) (by omega)
      (fun m h => h.pb r1) (fun m h => ⟨_, h.1.2.1⟩)) ?_
  refine hoareG_seqK (K := K6 g) (MK := g.mkr) (L := OL g) (hz "s0" s0) ?_
  refine hoareG_seqK (K := K6 g) (MK := g.mkr) (L := OL g) (hz "s1" s1) ?_
  refine hoareG_seqK (K := K6 g) (MK := g.mkr) (L := OL g)
    (stBlk ce g hbo s1 (off := 0) (by omega) h3 (fun s v hv => hval_c4 hv)) ?_
  exact hoareG_seqK (K := K6 g) (MK := g.mkr) (L := OL g) (outerLoop_hoare ce g hbo)
    (finTail_hoare ce g hout)

/-! ## The allocations -/

theorem side_of {l l0 : List (String × BitVec 64)} (hn : l.map Prod.fst = l0.map Prod.fst)
    {x : String} (h : ∀ y ∈ l0.map Prod.fst, nm y ≠ nm x) : ∀ p ∈ l, nm p.1 ≠ nm x :=
  fun p hp => h p.1 (hn ▸ List.mem_map_of_mem hp)

def g0F : FG := ⟨0, 0, 0, 0, 0, 0, 0, 0, 0⟩

def al0 (g : FG) : List (String × BitVec 64) := [("mark", g.mkr), ("d", g.d), ("a", g.a)]
def al1 (g : FG) : List (String × BitVec 64) := ("r0", g.b0) :: al0 g
def al2 (g : FG) : List (String × BitVec 64) := ("r1", g.b1) :: al1 g
def al3 (g : FG) : List (String × BitVec 64) := ("s0", g.b2) :: al2 g
def al4 (g : FG) : List (String × BitVec 64) := ("s1", g.b3) :: al3 g
def al5 (g : FG) : List (String × BitVec 64) := ("q", g.b4) :: al4 g
def al6 (g : FG) : List (String × BitVec 64) := ("tmp", g.b5) :: al5 g

def bs1 (g : FG) : List (Nat × Nat) := [(g.b0.toNat, 416)]
def bs2 (g : FG) : List (Nat × Nat) := (g.b1.toNat, 416) :: bs1 g
def bs3 (g : FG) : List (Nat × Nat) := (g.b2.toNat, 416) :: bs2 g
def bs4 (g : FG) : List (Nat × Nat) := (g.b3.toNat, 416) :: bs3 g
def bs5 (g : FG) : List (Nat × Nat) := (g.b4.toNat, 416) :: bs4 g

def K1 (g : FG) : Nat := g.b0.toNat + 416
def K2 (g : FG) : Nat := g.b1.toNat + 416
def K3 (g : FG) : Nat := g.b2.toNat + 416
def K4 (g : FG) : Nat := g.b3.toNat + 416
def K5 (g : FG) : Nat := g.b4.toNat + 416

theorem bs6_eq (g : FG) : bs6 g = (g.b5.toNat, 416) :: bs5 g := rfl

theorem ol_of_al6 {g : FG} {m : LocalsH} (h : LVs (al6 g) m) : OL g m := by
  have hl : ∀ (x : String) (w : BitVec 64), (x, w) ∈ al6 g → LW m x w := fun x w hx => h _ hx
  have e : ∀ (x : String) (w : BitVec 64), (x, w) ∈ al6 g ↔ (x, w) ∈ al6 g := fun _ _ => Iff.rfl
  refine ⟨⟨hl "d" g.d (by simp [al6, al5, al4, al3, al2, al1, al0]),
    hl "a" g.a (by simp [al6, al5, al4, al3, al2, al1, al0]),
    hl "mark" g.mkr (by simp [al6, al5, al4, al3, al2, al1, al0]),
    hl "q" g.b4 (by simp [al6, al5, al4, al3, al2, al1, al0])⟩, ?_, ?_, ?_, ?_, ?_⟩
  · exact ⟨g.b0, hl "r0" g.b0 (by simp [al6, al5, al4, al3, al2, al1, al0]), by simp [bs6]⟩
  · exact ⟨g.b1, hl "r1" g.b1 (by simp [al6, al5, al4, al3, al2, al1, al0]), by simp [bs6]⟩
  · exact ⟨g.b2, hl "s0" g.b2 (by simp [al6, al5, al4, al3, al2, al1, al0]), by simp [bs6]⟩
  · exact ⟨g.b3, hl "s1" g.b3 (by simp [al6, al5, al4, al3, al2, al1, al0]), by simp [bs6]⟩
  · exact ⟨g.b5, hl "tmp" g.b5 (by simp [al6, al5, al4, al3, al2, al1, al0]), by simp [bs6]⟩

def sP : ProgHOL 64 := Spec.Fq12.setupP (.seq Spec.Fq12.outerLoop Spec.Fq12.finTail)
def a6 : ProgHOL 64 := .decCall (nm "tmp") .one (nm "alloc") [cw 416] sP
def a5 : ProgHOL 64 := .decCall (nm "q") .one (nm "alloc") [cw 416] a6
def a4 : ProgHOL 64 := .decCall (nm "s1") .one (nm "alloc") [cw 416] a5
def a3 : ProgHOL 64 := .decCall (nm "s0") .one (nm "alloc") [cw 416] a4
def a2 : ProgHOL 64 := .decCall (nm "r1") .one (nm "alloc") [cw 416] a3
def a1 : ProgHOL 64 := .decCall (nm "r0") .one (nm "alloc") [cw 416] a2

theorem allocs_eq : Spec.Fq12.allocs sP = a1 := rfl

theorem stA6 {a : Act σ} (ce : CI σ X a) (g : FG) (hout : OutD a g.d) (hbo : BO a (bs5 g) (K5 g)) :
    HoareG σ X (PK a (K5 g) g.mkr (fun m => LVs (al5 g) m)) a6 (HQa a) := by
  unfold a6
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc 416 (by norm_num) (by norm_num)
    (L' := fun q m => LVs (al6 {g with b5 := q}) m) (fun s _ => ev_cw s 416) ?_ ?_
  · intro s st q hL
    exact LVs.dec hL "tmp" q (side_of (l := al5 g) (l0 := al5 g0F) (x := "tmp") rfl (by decide))
  · intro q hq8 hKq
    have hbo' : BO a (bs6 {g with b5 := q}) (K6 {g with b5 := q}) := by
      have := bo_cons (n := 416) hbo hq8 hKq
      exact this
    exact hoareG_conseq (hoareG_pre (setup_hoare ce {g with b5 := q} hbo' hout)
      (fun s _ ⟨hL, hK⟩ => ⟨ol_of_al6 hL, hK⟩)) (fun s _ h => h) (fun r t _ _ h => h)

theorem stA5 {a : Act σ} (ce : CI σ X a) (g : FG) (hout : OutD a g.d) (hbo : BO a (bs4 g) (K4 g)) :
    HoareG σ X (PK a (K4 g) g.mkr (fun m => LVs (al4 g) m)) a5 (HQa a) := by
  unfold a5
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc 416 (by norm_num) (by norm_num)
    (L' := fun q m => LVs (al5 {g with b4 := q}) m) (fun s _ => ev_cw s 416) ?_ ?_
  · intro s st q hL
    exact LVs.dec hL "q" q (side_of (l := al4 g) (l0 := al4 g0F) (x := "q") rfl (by decide))
  · intro q hq8 hKq
    exact stA6 ce {g with b4 := q} hout (bo_cons (n := 416) hbo hq8 hKq)

theorem stA4 {a : Act σ} (ce : CI σ X a) (g : FG) (hout : OutD a g.d) (hbo : BO a (bs3 g) (K3 g)) :
    HoareG σ X (PK a (K3 g) g.mkr (fun m => LVs (al3 g) m)) a4 (HQa a) := by
  unfold a4
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc 416 (by norm_num) (by norm_num)
    (L' := fun q m => LVs (al4 {g with b3 := q}) m) (fun s _ => ev_cw s 416) ?_ ?_
  · intro s st q hL
    exact LVs.dec hL "s1" q (side_of (l := al3 g) (l0 := al3 g0F) (x := "s1") rfl (by decide))
  · intro q hq8 hKq
    exact stA5 ce {g with b3 := q} hout (bo_cons (n := 416) hbo hq8 hKq)

theorem stA3 {a : Act σ} (ce : CI σ X a) (g : FG) (hout : OutD a g.d) (hbo : BO a (bs2 g) (K2 g)) :
    HoareG σ X (PK a (K2 g) g.mkr (fun m => LVs (al2 g) m)) a3 (HQa a) := by
  unfold a3
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc 416 (by norm_num) (by norm_num)
    (L' := fun q m => LVs (al3 {g with b2 := q}) m) (fun s _ => ev_cw s 416) ?_ ?_
  · intro s st q hL
    exact LVs.dec hL "s0" q (side_of (l := al2 g) (l0 := al2 g0F) (x := "s0") rfl (by decide))
  · intro q hq8 hKq
    exact stA4 ce {g with b2 := q} hout (bo_cons (n := 416) hbo hq8 hKq)

theorem stA2 {a : Act σ} (ce : CI σ X a) (g : FG) (hout : OutD a g.d) (hbo : BO a (bs1 g) (K1 g)) :
    HoareG σ X (PK a (K1 g) g.mkr (fun m => LVs (al1 g) m)) a2 (HQa a) := by
  unfold a2
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc 416 (by norm_num) (by norm_num)
    (L' := fun q m => LVs (al2 {g with b1 := q}) m) (fun s _ => ev_cw s 416) ?_ ?_
  · intro s st q hL
    exact LVs.dec hL "r1" q (side_of (l := al1 g) (l0 := al1 g0F) (x := "r1") rfl (by decide))
  · intro q hq8 hKq
    exact stA3 ce {g with b1 := q} hout (bo_cons (n := 416) hbo hq8 hKq)

theorem stA1 {a : Act σ} (ce : CI σ X a) (g : FG) (hout : OutD a g.d) (hbo : BO a [] g.mkr.toNat) :
    HoareG σ X (PK a g.mkr.toNat g.mkr (fun m => LVs (al0 g) m)) a1 (HQa a) := by
  unfold a1
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc 416 (by norm_num) (by norm_num)
    (L' := fun q m => LVs (al1 {g with b0 := q}) m) (fun s _ => ev_cw s 416) ?_ ?_
  · intro s st q hL
    exact LVs.dec hL "r0" q (side_of (l := al0 g) (l0 := al0 g0F) (x := "r0") rfl (by decide))
  · intro q hq8 hKq
    exact stA2 ce {g with b0 := q} hout (bo_cons (n := 416) hbo hq8 hKq)

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.stA1
