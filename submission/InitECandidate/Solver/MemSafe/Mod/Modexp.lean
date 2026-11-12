import InitECandidate.Solver.MemSafe.Mod.Max
import InitECandidate.Solver.MemSafe.Mod.Code

set_option autoImplicit false

/-!
# `modexp`: the summary

`mxSig = ⟨[any, any, any, any, any, any, bufArg 5 1 0], [], [], false⟩`, hand precondition `MxPre`
(`blen, mlen ≤ 1024`: the three guards of `pre_modexp`). `out` is a writable buffer of `mlen` bytes.

The body is proved in the activation invariant `Heap a Γ p s` with the block kit of `Mod/Kit.lean`
(`HK`: high-water mark + open heap window), stage by stage (`st*`): the ghost record `MG` holds
the values of the locals and the list `lk g` is the locals list after `k` bindings.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Mod
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-- The ghost values of the locals of `modexp`. -/
structure MG where
  bp : BitVec 64
  ep : BitVec 64
  el : BitVec 64
  mp : BitVec 64
  o : BitVec 64
  mkt : BitVec 64
  md : BitVec 64
  bd : BitVec 64
  base : BitVec 64
  r : BitVec 64
  prod : BitVec 64
  q : BitVec 64
  un : BitVec 64
  vn : BitVec 64
  Bl : Nat
  M : Nat
  NMD : Nat
  N : Nat
  NBD : Nat
  BIG : Nat

def sgAA : Sig := ⟨[.any, .any], [], [], false⟩

def l0 (g : MG) : List (String × BitVec 64) :=
  [("bp", g.bp), ("blen", W g.Bl), ("ep", g.ep), ("elen", g.el), ("mp", g.mp), ("mlen", W g.M), ("out", g.o)]

def l1 (g : MG) : List (String × BitVec 64) :=
  [("mark", g.mkt), ("bp", g.bp), ("blen", W g.Bl), ("ep", g.ep), ("elen", g.el), ("mp", g.mp), ("mlen", W g.M), ("out", g.o)]

def l2 (g : MG) : List (String × BitVec 64) :=
  [("nmd", W g.NMD), ("mark", g.mkt), ("bp", g.bp), ("blen", W g.Bl), ("ep", g.ep), ("elen", g.el), ("mp", g.mp), ("mlen", W g.M), ("out", g.o)]

def l3 (g : MG) : List (String × BitVec 64) :=
  [("md", g.md), ("nmd", W g.NMD), ("mark", g.mkt), ("bp", g.bp), ("blen", W g.Bl), ("ep", g.ep), ("elen", g.el), ("mp", g.mp), ("mlen", W g.M), ("out", g.o)]

def l4 (g : MG) : List (String × BitVec 64) :=
  [("n", W g.N), ("md", g.md), ("nmd", W g.NMD), ("mark", g.mkt), ("bp", g.bp), ("blen", W g.Bl), ("ep", g.ep), ("elen", g.el), ("mp", g.mp), ("mlen", W g.M), ("out", g.o)]

def l5 (g : MG) : List (String × BitVec 64) :=
  [("nbd", W g.NBD), ("n", W g.N), ("md", g.md), ("nmd", W g.NMD), ("mark", g.mkt), ("bp", g.bp), ("blen", W g.Bl), ("ep", g.ep), ("elen", g.el), ("mp", g.mp), ("mlen", W g.M), ("out", g.o)]

def l6 (g : MG) : List (String × BitVec 64) :=
  [("big", W g.BIG), ("nbd", W g.NBD), ("n", W g.N), ("md", g.md), ("nmd", W g.NMD), ("mark", g.mkt), ("bp", g.bp), ("blen", W g.Bl), ("ep", g.ep), ("elen", g.el), ("mp", g.mp), ("mlen", W g.M), ("out", g.o)]

def l7 (g : MG) : List (String × BitVec 64) :=
  [("bd", g.bd), ("big", W g.BIG), ("nbd", W g.NBD), ("n", W g.N), ("md", g.md), ("nmd", W g.NMD), ("mark", g.mkt), ("bp", g.bp), ("blen", W g.Bl), ("ep", g.ep), ("elen", g.el), ("mp", g.mp), ("mlen", W g.M), ("out", g.o)]

def l8 (g : MG) : List (String × BitVec 64) :=
  [("base", g.base), ("bd", g.bd), ("big", W g.BIG), ("nbd", W g.NBD), ("n", W g.N), ("md", g.md), ("nmd", W g.NMD), ("mark", g.mkt), ("bp", g.bp), ("blen", W g.Bl), ("ep", g.ep), ("elen", g.el), ("mp", g.mp), ("mlen", W g.M), ("out", g.o)]

def l9 (g : MG) : List (String × BitVec 64) :=
  [("r", g.r), ("base", g.base), ("bd", g.bd), ("big", W g.BIG), ("nbd", W g.NBD), ("n", W g.N), ("md", g.md), ("nmd", W g.NMD), ("mark", g.mkt), ("bp", g.bp), ("blen", W g.Bl), ("ep", g.ep), ("elen", g.el), ("mp", g.mp), ("mlen", W g.M), ("out", g.o)]

def l10 (g : MG) : List (String × BitVec 64) :=
  [("prod", g.prod), ("r", g.r), ("base", g.base), ("bd", g.bd), ("big", W g.BIG), ("nbd", W g.NBD), ("n", W g.N), ("md", g.md), ("nmd", W g.NMD), ("mark", g.mkt), ("bp", g.bp), ("blen", W g.Bl), ("ep", g.ep), ("elen", g.el), ("mp", g.mp), ("mlen", W g.M), ("out", g.o)]

def l11 (g : MG) : List (String × BitVec 64) :=
  [("q", g.q), ("prod", g.prod), ("r", g.r), ("base", g.base), ("bd", g.bd), ("big", W g.BIG), ("nbd", W g.NBD), ("n", W g.N), ("md", g.md), ("nmd", W g.NMD), ("mark", g.mkt), ("bp", g.bp), ("blen", W g.Bl), ("ep", g.ep), ("elen", g.el), ("mp", g.mp), ("mlen", W g.M), ("out", g.o)]

def l12 (g : MG) : List (String × BitVec 64) :=
  [("un", g.un), ("q", g.q), ("prod", g.prod), ("r", g.r), ("base", g.base), ("bd", g.bd), ("big", W g.BIG), ("nbd", W g.NBD), ("n", W g.N), ("md", g.md), ("nmd", W g.NMD), ("mark", g.mkt), ("bp", g.bp), ("blen", W g.Bl), ("ep", g.ep), ("elen", g.el), ("mp", g.mp), ("mlen", W g.M), ("out", g.o)]

def l13 (g : MG) : List (String × BitVec 64) :=
  [("vn", g.vn), ("un", g.un), ("q", g.q), ("prod", g.prod), ("r", g.r), ("base", g.base), ("bd", g.bd), ("big", W g.BIG), ("nbd", W g.NBD), ("n", W g.N), ("md", g.md), ("nmd", W g.NMD), ("mark", g.mkt), ("bp", g.bp), ("blen", W g.Bl), ("ep", g.ep), ("elen", g.el), ("mp", g.mp), ("mlen", W g.M), ("out", g.o)]

/-- Block lists and high-water marks. -/
def bs3 (g : MG) : List (Nat × Nat) := [(g.md.toNat, g.NMD * 8 + 8)]
def bs7 (g : MG) : List (Nat × Nat) := (g.bd.toNat, g.BIG * 8 + 8) :: bs3 g
def bs8 (g : MG) : List (Nat × Nat) := (g.base.toNat, g.N * 8) :: bs7 g
def bs9 (g : MG) : List (Nat × Nat) := (g.r.toNat, g.N * 8) :: bs8 g
def bs10 (g : MG) : List (Nat × Nat) := (g.prod.toNat, 2 * g.N * 8) :: bs9 g
def bs11 (g : MG) : List (Nat × Nat) := (g.q.toNat, g.BIG * 8 + 8) :: bs10 g
def bs12 (g : MG) : List (Nat × Nat) := (g.un.toNat, g.BIG * 8 + 16) :: bs11 g
def bs13 (g : MG) : List (Nat × Nat) := (g.vn.toNat, g.N * 8) :: bs12 g

def K3 (g : MG) : Nat := g.md.toNat + (g.NMD * 8 + 8)
def K7 (g : MG) : Nat := g.bd.toNat + (g.BIG * 8 + 8)
def K8 (g : MG) : Nat := g.base.toNat + g.N * 8
def K9 (g : MG) : Nat := g.r.toNat + g.N * 8
def K10 (g : MG) : Nat := g.prod.toNat + 2 * g.N * 8
def K11 (g : MG) : Nat := g.q.toNat + (g.BIG * 8 + 8)
def K12 (g : MG) : Nat := g.un.toNat + (g.BIG * 8 + 16)
def K13 (g : MG) : Nat := g.vn.toNat + g.N * 8

/-- The size facts, growing with the stages. -/
def F1 (g : MG) : Prop := g.M ≤ 1024 ∧ g.Bl ≤ 1024
def F2 (g : MG) : Prop := F1 g ∧ g.NMD = (g.M + 3) / 2 ^ 2
def F4 (g : MG) : Prop := F2 g ∧ g.N ≤ g.NMD
def F5 (g : MG) : Prop := F4 g ∧ 1 ≤ g.N
def F6 (g : MG) : Prop := F5 g ∧ g.NBD = (g.Bl + 3) / 2 ^ 2
def F7 (g : MG) : Prop := F6 g ∧ g.BIG = max g.NBD (2 * g.N)

theorem F7_bounds {g : MG} (h : F7 g) : g.M ≤ 1024 ∧ g.Bl ≤ 1024 ∧ g.NMD ≤ 257 ∧ g.N ≤ 257 ∧
    1 ≤ g.N ∧ g.NBD ≤ 257 ∧ g.NBD ≤ g.BIG ∧ 2 * g.N ≤ g.BIG ∧ g.BIG ≤ 514 := by
  obtain ⟨⟨⟨⟨⟨⟨hM, hB⟩, hNMD⟩, hN⟩, hN1⟩, hNBD⟩, hBIG⟩ := h
  refine ⟨hM, hB, ?_, ?_, hN1, ?_, ?_, ?_, ?_⟩ <;> omega

/-- The callee summaries and the activation facts. -/
structure CE (σ : Type) (X : Ctx 64) (a : Act σ) : Prop where
  ha : ActOK a X
  hgrow : a.sg.grows = false
  hL0 : Layout a.C a.p0 a.Γ0
  bfb : SumSpecA σ X a.Cb a.H (nm "bn_from_be") Bn.bnFromBeSig (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  btb : SumSpecA σ X a.Cb a.H (nm "bn_to_be") Bn.bnToBeSig (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  mul : SumSpecA σ X a.Cb a.H (nm "bn_mul") Bn2.bnMulSig Bn2.BnMulPre (fun _ _ _ _ => False)
    (fun _ _ _ _ _ _ => True)
  mod : SumSpecA σ X a.Cb a.H (nm "bn_mod") Bn2.bnModSig Bn2.BnModPre (fun _ _ _ _ => False)
    (fun _ _ _ _ _ _ => True)
  mz : SumSpecA σ X a.Cb a.H (nm "memzero") Helpers.sigMemzero (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  mc : SumSpecA σ X a.Cb a.H (nm "memcpy") Helpers.sigMemcpy (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  dl : SumSpecA σ X a.Cb a.H (nm "digits_len") sgAA (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  dlF : FunSpec σ X (nm "digits_len") (fun vs s r t => Good (some r) →
    t.globals = s.globals ∧ t.memory = s.memory ∧ ∀ v, r = .returned v → Helpers.DLRet vs s.memory v)
  mx : SumSpecA σ X a.Cb a.H (nm "max") sgAA (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  mxF : FunSpec σ X (nm "max") (fun vs s r t => Good (some r) → ∀ v, r = .returned v →
      ∀ A B : BitVec 64, vs = [V A, V B] → ∃ w, v = V w ∧ w.toNat = max A.toNat B.toNat)
  bt : SumSpecA σ X a.Cb a.H (nm "be_top_bit") sgAA (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  hAl : AllocSpec σ X (nm "alloc") .heap
  hAc : Summ σ X a.Cb a.H (nm "alloc") allocSig
  hRel : ReleaseSpec σ X (nm "heap_release") gHeap
  hMk : MarkSpec' σ X (nm "heap_mark") gHeap

/-- The `out` buffer of the entry. -/
structure OutOK (a : Act σ) (o : BitVec 64) (M : Nat) : Prop where
  buf : BufOK a.Cb a.Γ0 a.p0 o.toNat (1 * M + 0)
  foot : ∀ x, Overlap o.toNat (1 * M + 0) x → a.Foot x

/-- The locals of the exponent loop and beyond: `t` is arbitrary. -/
def LT (g : MG) (m : LocalsH) : Prop := ∃ T : BitVec 64, LVs (("t", T) :: l13 g) m

theorem lt_mem {g : MG} {m : LocalsH} (h : LT g m) {x : String} {w : BitVec 64}
    (hx : (x, w) ∈ l13 g) : m.lookup (nm x) = some (.val (.word w)) := by
  obtain ⟨T, hT⟩ := h
  exact hT _ (List.mem_cons_of_mem _ hx)

/-! ## The end and the loop -/

theorem stEnd {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F7 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs13 g) (K13 g)) :
    HoareG σ X (PK a (K13 g) g.mkt (LT g)) mxEnd (HQa a) := by
  unfold mxEnd
  have hb := F7_bounds hF
  refine hoareG_seqK (L := LT g) (hoareG_callK ce.ha ce.hgrow ce.btb (by simp [Bn.bnToBeSig]) rfl ?_) ?_
  · intro s _ hL Γ p he hh hK vs hvs
    have e1 : ev s (lv (nm "r")) = some (V g.r) := lt_mem hL (by simp [l13])
    have e2 : ev s (lv (nm "n")) = some (V (W g.N)) := lt_mem hL (by simp [l13])
    have e3 : ev s (lv (nm "out")) = some (V g.o) := lt_mem hL (by simp [l13])
    have e4 : ev s (lv (nm "mlen")) = some (V (W g.M)) := lt_mem hL (by simp [l13])
    rw [evs_cons e1 (evs_cons e2 (evs_cons e3 (evs_cons e4 evs_nil)))] at hvs
    cases hvs
    have hM : (W g.M).toNat = g.M := toNat_W (by omega)
    refine ⟨argsOK_btb ?_, fun x hx => hout.foot x ?_, fun s' => trivial⟩
    · rw [hM]; exact bufOK_later ce.ha hh he hout.buf
    · have := argCells_btb hx
      rwa [hM] at this
  · exact hoareG_conseq (hoareG_relRet ce.ha ce.hRel (L := LT g)
      (fun s h => lt_mem h (by simp [l13]))) (fun _ _ h => h) (fun r t _ _ h => rq_hqa h)

/-! ## Calls at the last stage -/

section calls
variable {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F7 g) (hbo : BO a (bs13 g) (K13 g))
  {L : LocalsH → Prop} (hL : ∀ m, L m → LVs (l13 g) m)

include ce hF hbo hL

theorem callMul {b : String} {B : BitVec 64} (hbm : (b, B) ∈ l13 g) :
    HoareG σ X (PK a (K13 g) g.mkt L)
      (callD (nm "bn_mul") [lv (nm "r"), lv (nm "n"), lv (nm b), lv (nm "n"), lv (nm "prod")])
      (SPK a (K13 g) g.mkt L) := by
  have hb := F7_bounds hF
  have hN : (W g.N).toNat = g.N := toNat_W (by omega)
  refine hoareG_callK ce.ha ce.hgrow ce.mul (by simp [Bn2.bnMulSig]) rfl ?_
  intro s _ hLs Γ p he hh hK vs hvs
  have hl := hL _ hLs
  have e1 : ev s (lv (nm "r")) = some (V g.r) := hl.getE (by simp [l13])
  have e2 : ev s (lv (nm "n")) = some (V (W g.N)) := hl.getE (by simp [l13])
  have e3 : ev s (lv (nm b)) = some (V B) := hl.getE hbm
  have e4 : ev s (lv (nm "prod")) = some (V g.prod) := hl.getE (by simp [l13])
  rw [evs_cons e1 (evs_cons e2 (evs_cons e3 (evs_cons e2 (evs_cons e4 evs_nil))))] at hvs
  cases hvs
  obtain ⟨hbuf, hfoot⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK
    (b := g.prod.toNat) (n := 2 * g.N * 8) (m := 16 * (W g.N).toNat + 0)
    (by simp [bs13, bs12, bs11, bs10]) (by rw [hN]; omega) a.Cb
  exact ⟨argsOK_mul hbuf, fun x hx => hfoot x (argCells_mul hx), fun s' => pre_mul (le_refl _) s' Γ⟩

theorem callModLoop :
    HoareG σ X (PK a (K13 g) g.mkt L)
      (callD (nm "bn_mod") [lv (nm "prod"), .panop .mul [cw 2, lv (nm "n")], lv (nm "md"),
        lv (nm "n"), lv (nm "r"), lv (nm "q"), lv (nm "un"), lv (nm "vn")])
      (SPK a (K13 g) g.mkt L) := by
  have hb := F7_bounds hF
  have hN : (W g.N).toNat = g.N := toNat_W (by omega)
  have h2N : (W (2 * g.N)).toNat = 2 * g.N := toNat_W (by omega)
  refine hoareG_callK ce.ha ce.hgrow ce.mod (by simp [Bn2.bnModSig]) rfl ?_
  intro s _ hLs Γ p he hh hK vs hvs
  have hl := hL _ hLs
  have e1 : ev s (lv (nm "prod")) = some (V g.prod) := hl.getE (by simp [l13])
  have e2 : ev s (.panop .mul [cw 2, lv (nm "n")]) = some (V (W (2 * g.N))) :=
    ev_mulW (ev_cw s 2) (hl.getE (by simp [l13]))
  have e3 : ev s (lv (nm "md")) = some (V g.md) := hl.getE (by simp [l13])
  have e4 : ev s (lv (nm "n")) = some (V (W g.N)) := hl.getE (by simp [l13])
  have e5 : ev s (lv (nm "r")) = some (V g.r) := hl.getE (by simp [l13])
  have e6 : ev s (lv (nm "q")) = some (V g.q) := hl.getE (by simp [l13])
  have e7 : ev s (lv (nm "un")) = some (V g.un) := hl.getE (by simp [l13])
  have e8 : ev s (lv (nm "vn")) = some (V g.vn) := hl.getE (by simp [l13])
  rw [evs_cons e1 (evs_cons e2 (evs_cons e3 (evs_cons e4 (evs_cons e5 (evs_cons e6
    (evs_cons e7 (evs_cons e8 evs_nil)))))))] at hvs
  cases hvs
  obtain ⟨hr1, hr2⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK
    (b := g.r.toNat) (n := g.N * 8) (m := 8 * (W g.N).toNat + 0)
    (by simp [bs13, bs12, bs11, bs10, bs9]) (by rw [hN]; omega) a.Cb
  obtain ⟨hq1, hq2⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK
    (b := g.q.toNat) (n := g.BIG * 8 + 8) (m := 8 * (W (2 * g.N)).toNat + 0)
    (by simp [bs13, bs12, bs11]) (by rw [h2N]; omega) a.Cb
  obtain ⟨hu1, hu2⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK
    (b := g.un.toNat) (n := g.BIG * 8 + 16) (m := 8 * (W (2 * g.N)).toNat + 8)
    (by simp [bs13, bs12]) (by rw [h2N]; omega) a.Cb
  obtain ⟨hv1, hv2⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK
    (b := g.vn.toNat) (n := g.N * 8) (m := 8 * (W g.N).toNat + 0)
    (by simp [bs13]) (by rw [hN]; omega) a.Cb
  refine ⟨argsOK_mod hr1 hq1 hu1 hv1, fun x hx => ?_, fun s' => pre_mod (by rw [hN]; omega) s' Γ⟩
  rcases argCells_mod hx with h | h | h | h
  · exact hr2 x h
  · exact hq2 x h
  · exact hu2 x h
  · exact hv2 x h

theorem callModBase :
    HoareG σ X (PK a (K13 g) g.mkt L)
      (mxMod (lv (nm "bd")) (lv (nm "nbd")) "base") (SPK a (K13 g) g.mkt L) := by
  unfold mxMod
  have hb := F7_bounds hF
  have hN : (W g.N).toNat = g.N := toNat_W (by omega)
  have hNBD : (W g.NBD).toNat = g.NBD := toNat_W (by omega)
  refine hoareG_callK ce.ha ce.hgrow ce.mod (by simp [Bn2.bnModSig]) rfl ?_
  intro s _ hLs Γ p he hh hK vs hvs
  have hl := hL _ hLs
  have e1 : ev s (lv (nm "bd")) = some (V g.bd) := hl.getE (by simp [l13])
  have e2 : ev s (lv (nm "nbd")) = some (V (W g.NBD)) := hl.getE (by simp [l13])
  have e3 : ev s (lv (nm "md")) = some (V g.md) := hl.getE (by simp [l13])
  have e4 : ev s (lv (nm "n")) = some (V (W g.N)) := hl.getE (by simp [l13])
  have e5 : ev s (lv (nm "base")) = some (V g.base) := hl.getE (by simp [l13])
  have e6 : ev s (lv (nm "q")) = some (V g.q) := hl.getE (by simp [l13])
  have e7 : ev s (lv (nm "un")) = some (V g.un) := hl.getE (by simp [l13])
  have e8 : ev s (lv (nm "vn")) = some (V g.vn) := hl.getE (by simp [l13])
  rw [evs_cons e1 (evs_cons e2 (evs_cons e3 (evs_cons e4 (evs_cons e5 (evs_cons e6
    (evs_cons e7 (evs_cons e8 evs_nil)))))))] at hvs
  cases hvs
  obtain ⟨hr1, hr2⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK
    (b := g.base.toNat) (n := g.N * 8) (m := 8 * (W g.N).toNat + 0)
    (by simp [bs13, bs12, bs11, bs10, bs9, bs8]) (by rw [hN]; omega) a.Cb
  obtain ⟨hq1, hq2⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK
    (b := g.q.toNat) (n := g.BIG * 8 + 8) (m := 8 * (W g.NBD).toNat + 0)
    (by simp [bs13, bs12, bs11]) (by rw [hNBD]; omega) a.Cb
  obtain ⟨hu1, hu2⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK
    (b := g.un.toNat) (n := g.BIG * 8 + 16) (m := 8 * (W g.NBD).toNat + 8)
    (by simp [bs13, bs12]) (by rw [hNBD]; omega) a.Cb
  obtain ⟨hv1, hv2⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK
    (b := g.vn.toNat) (n := g.N * 8) (m := 8 * (W g.N).toNat + 0)
    (by simp [bs13]) (by rw [hN]; omega) a.Cb
  refine ⟨argsOK_mod hr1 hq1 hu1 hv1, fun x hx => ?_, fun s' => pre_mod (by rw [hN]; omega) s' Γ⟩
  rcases argCells_mod hx with h | h | h | h
  · exact hr2 x h
  · exact hq2 x h
  · exact hu2 x h
  · exact hv2 x h

theorem callBfb2 :
    HoareG σ X (PK a (K13 g) g.mkt L)
      (callD (nm "bn_from_be") [lv (nm "bp"), lv (nm "blen"), lv (nm "bd")])
      (SPK a (K13 g) g.mkt L) := by
  have hb := F7_bounds hF
  have hBl : (W g.Bl).toNat = g.Bl := toNat_W (by omega)
  have hNBD := hF.1.2
  refine hoareG_callK ce.ha ce.hgrow ce.bfb (by simp [Bn.bnFromBeSig]) rfl ?_
  intro s _ hLs Γ p he hh hK vs hvs
  have hl := hL _ hLs
  have e1 : ev s (lv (nm "bp")) = some (V g.bp) := hl.getE (by simp [l13])
  have e2 : ev s (lv (nm "blen")) = some (V (W g.Bl)) := hl.getE (by simp [l13])
  have e3 : ev s (lv (nm "bd")) = some (V g.bd) := hl.getE (by simp [l13])
  rw [evs_cons e1 (evs_cons e2 (evs_cons e3 evs_nil))] at hvs
  cases hvs
  obtain ⟨hbd1, hbd2⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK
    (b := g.bd.toNat) (n := g.BIG * 8 + 8) (m := 2 * (W g.Bl).toNat + 6)
    (by simp [bs13, bs12, bs11, bs10, bs9, bs8, bs7]) (by rw [hBl]; omega) a.Cb
  exact ⟨argsOK_bfb hbd1, fun x hx => hbd2 x (argCells_bfb hx), fun s' => trivial⟩

theorem callMz :
    HoareG σ X (PK a (K13 g) g.mkt L)
      (callD (nm "memzero") [lv (nm "r"), mxN8]) (SPK a (K13 g) g.mkt L) := by
  unfold mxN8
  have hb := F7_bounds hF
  have hN8 : (W (g.N * 8)).toNat = g.N * 8 := toNat_W (by omega)
  refine hoareG_callK ce.ha ce.hgrow ce.mz (by simp [Helpers.sigMemzero]) rfl ?_
  intro s _ hLs Γ p he hh hK vs hvs
  have hl := hL _ hLs
  have e1 : ev s (lv (nm "r")) = some (V g.r) := hl.getE (by simp [l13])
  have e2 : ev s (.panop .mul [lv (nm "n"), cw 8]) = some (V (W (g.N * 8))) :=
    ev_mulW (hl.getE (by simp [l13])) (ev_cw s 8)
  rw [evs_cons e1 (evs_cons e2 evs_nil)] at hvs
  cases hvs
  obtain ⟨hr1, hr2⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK
    (b := g.r.toNat) (n := g.N * 8) (m := 1 * (W (g.N * 8)).toNat + 0)
    (by simp [bs13, bs12, bs11, bs10, bs9]) (by rw [hN8]; omega) a.Cb
  exact ⟨argsOK_mz hr1, fun x hx => hr2 x (argCells_mz hx), fun s' => trivial⟩

theorem callMc :
    HoareG σ X (PK a (K13 g) g.mkt L)
      (callD (nm "memcpy") [lv (nm "r"), lv (nm "base"), mxN8]) (SPK a (K13 g) g.mkt L) := by
  unfold mxN8
  have hb := F7_bounds hF
  have hN8 : (W (g.N * 8)).toNat = g.N * 8 := toNat_W (by omega)
  refine hoareG_callK ce.ha ce.hgrow ce.mc (by simp [Helpers.sigMemcpy]) rfl ?_
  intro s _ hLs Γ p he hh hK vs hvs
  have hl := hL _ hLs
  have e1 : ev s (lv (nm "r")) = some (V g.r) := hl.getE (by simp [l13])
  have e0 : ev s (lv (nm "base")) = some (V g.base) := hl.getE (by simp [l13])
  have e2 : ev s (.panop .mul [lv (nm "n"), cw 8]) = some (V (W (g.N * 8))) :=
    ev_mulW (hl.getE (by simp [l13])) (ev_cw s 8)
  rw [evs_cons e1 (evs_cons e0 (evs_cons e2 evs_nil))] at hvs
  cases hvs
  obtain ⟨hr1, hr2⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK
    (b := g.r.toNat) (n := g.N * 8) (m := 1 * (W (g.N * 8)).toNat + 0)
    (by simp [bs13, bs12, bs11, bs10, bs9]) (by rw [hN8]; omega) a.Cb
  exact ⟨argsOK_mc hr1, fun x hx => hr2 x (argCells_mc hx), fun s' => trivial⟩

end calls

/-! ## The loop and the cases -/

theorem l13_names (g : MG) : (l13 g).map Prod.fst = ["vn", "un", "q", "prod", "r", "base", "bd", "big",
    "nbd", "n", "md", "nmd", "mark", "bp", "blen", "ep", "elen", "mp", "mlen", "out"] := rfl

theorem names_ne_t : ∀ x ∈ ["vn", "un", "q", "prod", "r", "base", "bd", "big",
    "nbd", "n", "md", "nmd", "mark", "bp", "blen", "ep", "elen", "mp", "mlen", "out"],
    nm x ≠ nm "t" := by decide

theorem l13_ne_t (g : MG) : ∀ p ∈ l13 g, nm p.1 ≠ nm "t" := fun p hp =>
  names_ne_t p.1 (by rw [← l13_names g]; exact List.mem_map_of_mem hp)

theorem hLT {g : MG} : ∀ m, LT g m → LVs (l13 g) m :=
  fun m ⟨T, h⟩ => h.mono (fun p hp => List.mem_cons_of_mem _ hp)

theorem stIter {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F7 g) (hbo : BO a (bs13 g) (K13 g)) :
    HoareG σ X (PK a (K13 g) g.mkt (LT g)) mxIter (SPK a (K13 g) g.mkt (LT g)) := by
  unfold mxIter
  refine hoareG_seqK2 (L := LT g) (hoareG_assignK ce.ha.hH ?_)
    (hoareG_seqK2 (L := LT g) (callMul ce g hF hbo hLT (b := "r") (B := g.r) (by simp [l13]))
      (hoareG_seqK2 (L := LT g) (callModLoop ce g hF hbo hLT) (hoareG_iteK ?_ ?_)))
  · rintro s _ ⟨T, hL⟩ v hv
    have e := ev_sub2 (s := s) (hL.getE (x := "t") (w := T) (by simp)) (ev_cw s 1)
    rw [e] at hv
    cases hv
    exact ⟨T - BitVec.ofNat 64 1, LVs.set hL (l13_ne_t g) _ rfl⟩
  · exact hoareG_pre (hoareG_seqK2 (L := LT g)
      (callMul ce g hF hbo hLT (b := "base") (B := g.base) (by simp [l13]))
      (callModLoop ce g hF hbo hLT)) (fun s _ h => h.1)
  · exact hoareG_pre (hoareG_skip fun s _ h => ⟨fun _ => h, fun r' h => absurd h (by simp)⟩)
      (fun s _ h => h.1)

theorem stLoop {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F7 g) (hbo : BO a (bs13 g) (K13 g)) :
    HoareG σ X (PK a (K13 g) g.mkt (LT g)) mxLoop (SPK a (K13 g) g.mkt (LT g)) :=
  hoareG_whileK ce.ha.hH (hoareG_pre (stIter ce g hF hbo) (fun s _ h => h.1))

theorem stCase {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F7 g) (hbo : BO a (bs13 g) (K13 g)) :
    HoareG σ X (PK a (K13 g) g.mkt (LT g)) mxCase (SPK a (K13 g) g.mkt (LT g)) := by
  have hb := F7_bounds hF
  unfold mxCase
  refine hoareG_iteK ?_ ?_
  · refine hoareG_pre (hoareG_seqK2 (L := LT g) (callMz ce g hF hbo hLT)
      (hoareG_iteK (hoareG_pre (hoareG_skip fun s _ h => ⟨fun _ => h, fun r' h => absurd h (by simp)⟩)
        (fun s _ h => h.1)) ?_)) (fun s _ h => h.1)
    refine hoareG_pre (hoareG_stwK ce.ha ce.hgrow ce.hL0 ?_ ?_) (fun s _ h => h.1)
    · intro s _ hLs w hw
      have e1 : ev s (lv (nm "r")) = some (V g.r) := lt_mem hLs (by simp [l13])
      rw [e1] at hw
      cases hw
      obtain ⟨hlo, hb8, hhi⟩ := hbo.2 (g.r.toNat, g.N * 8) (by simp [bs13, bs12, bs11, bs10, bs9])
      exact ⟨g.r.toNat, g.N * 8, hb8, hlo, hhi, le_rfl, by omega⟩
    · intro s _ v hv
      rw [ev_cw] at hv
      cases hv
      exact ⟨HolWordLab.word (BitVec.ofNat 64 1), by simp [flattenHOL]⟩
  · exact hoareG_pre (hoareG_seqK2 (L := LT g) (callMc ce g hF hbo hLT) (stLoop ce g hF hbo))
      (fun s _ h => h.1)

theorem stT {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F7 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs13 g) (K13 g)) :
    HoareG σ X (PK a (K13 g) g.mkt (LT g)) mxT (HQa a) :=
  hoareG_seqK (stCase ce g hF hbo) (stEnd ce g hF hout hbo)

/-! ## The allocations -/

def g0 : MG := ⟨0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0⟩

theorem side_of {l l0 : List (String × BitVec 64)} (hn : l.map Prod.fst = l0.map Prod.fst)
    {x : String} (h : ∀ y ∈ l0.map Prod.fst, nm y ≠ nm x) : ∀ p ∈ l, nm p.1 ≠ nm x :=
  fun p hp => h p.1 (hn ▸ List.mem_map_of_mem hp)

theorem exists_W (w : BitVec 64) : ∃ N, N < 2 ^ 64 ∧ w = W N :=
  ⟨w.toNat, w.isLt, (W_toNat w).symm⟩

def mxA7 : ProgHOL 64 := .decCall (nm "vn") .one (nm "alloc") [mxN8] mxW
def mxA6 : ProgHOL 64 := .decCall (nm "un") .one (nm "alloc") [mxBig8 16] mxA7
def mxA5 : ProgHOL 64 := .decCall (nm "q") .one (nm "alloc") [mxBig8 8] mxA6
def mxA4 : ProgHOL 64 := .decCall (nm "prod") .one (nm "alloc") [.panop .mul [mx2n, cw 8]] mxA5
def mxA3 : ProgHOL 64 := .decCall (nm "r") .one (nm "alloc") [mxN8] mxA4
def mxA2 : ProgHOL 64 := .decCall (nm "base") .one (nm "alloc") [mxN8] mxA3

theorem mxAllocs_eq : mxAllocs = .decCall (nm "bd") .one (nm "alloc") [mxBig8 8] mxA2 := rfl

/-- The common shape of an allocation stage. -/
theorem stW {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F7 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs13 g) (K13 g)) :
    HoareG σ X (PK a (K13 g) g.mkt (fun m => LVs (l13 g) m)) mxW (HQa a) := by
  unfold mxW
  refine hoareG_seqK (L := fun m => LVs (l13 g) m) (callBfb2 ce g hF hbo (fun m h => h)) ?_
  refine hoareG_seqK (L := fun m => LVs (l13 g) m) (callModBase ce g hF hbo (fun m h => h)) ?_
  refine hoareG_decCallK ce.ha ce.bt (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (by simp [sgAA]) rfl
    (Fct := fun _ => True) (L' := fun w m => LVs (("t", w) :: l13 g) m) ?_ ?_ ?_ ?_
  · intro s _ hLs Γ p he hh hK vs hvs
    have e1 : ev s (lv (nm "ep")) = some (V g.ep) := LVs.getE hLs (by simp [l13])
    have e2 : ev s (lv (nm "elen")) = some (V g.el) := LVs.getE hLs (by simp [l13])
    rw [evs_cons e1 (evs_cons e2 evs_nil)] at hvs
    cases hvs
    exact ⟨argsOK_any (by simp [sgAA]) rfl, fun x hx => absurd hx (argCells_any (by simp [sgAA])),
      fun _ => trivial⟩
  · intro s hLs vs hvs callee v st _ hsh
    obtain ⟨w, hw⟩ := val_of_shapeEq_one' hsh
    exact ⟨w, hw, trivial⟩
  · intro s st w hL
    exact LVs.dec hL "t" w (l13_ne_t g)
  · intro w _
    exact hoareG_pre (stT ce g hF hout hbo) (fun s _ ⟨hL, hK⟩ => ⟨⟨w, hL⟩, hK⟩)
theorem stVn {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F7 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs12 g) (K12 g)) :
    HoareG σ X (PK a (K12 g) g.mkt (fun m => LVs (l12 g) m)) mxA7 (HQa a) := by
  have hb := F7_bounds hF
  unfold mxA7
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc (g.N * 8) (by omega) (by omega)
    (L' := fun q m => LVs (l13 {g with vn := q}) m) ?_ ?_ ?_
  · intro s hL
    exact ev_mulW (LVs.getE hL (by simp [l12])) (ev_cw s 8)
  · intro s st q hL
    exact LVs.dec hL "vn" q (side_of (l := l12 g) (l0 := l12 g0) (x := "vn") rfl (by decide))
  · intro q hq8 hKq
    exact stW ce {g with vn := q} hF hout (bo_cons hbo hq8 hKq)

theorem stUn {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F7 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs11 g) (K11 g)) :
    HoareG σ X (PK a (K11 g) g.mkt (fun m => LVs (l11 g) m)) mxA6 (HQa a) := by
  have hb := F7_bounds hF
  unfold mxA6
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc (g.BIG * 8 + 16) (by omega) (by omega)
    (L' := fun q m => LVs (l12 {g with un := q}) m) ?_ ?_ ?_
  · intro s hL
    exact ev_addW (ev_mulW (LVs.getE hL (by simp [l11])) (ev_cw s 8)) (ev_cw s 16)
  · intro s st q hL
    exact LVs.dec hL "un" q (side_of (l := l11 g) (l0 := l11 g0) (x := "un") rfl (by decide))
  · intro q hq8 hKq
    exact stVn ce {g with un := q} hF hout (bo_cons hbo hq8 hKq)

theorem stQ {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F7 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs10 g) (K10 g)) :
    HoareG σ X (PK a (K10 g) g.mkt (fun m => LVs (l10 g) m)) mxA5 (HQa a) := by
  have hb := F7_bounds hF
  unfold mxA5
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc (g.BIG * 8 + 8) (by omega) (by omega)
    (L' := fun q m => LVs (l11 {g with q := q}) m) ?_ ?_ ?_
  · intro s hL
    exact ev_addW (ev_mulW (LVs.getE hL (by simp [l10])) (ev_cw s 8)) (ev_cw s 8)
  · intro s st q hL
    exact LVs.dec hL "q" q (side_of (l := l10 g) (l0 := l10 g0) (x := "q") rfl (by decide))
  · intro q hq8 hKq
    exact stUn ce {g with q := q} hF hout (bo_cons hbo hq8 hKq)

theorem stProd {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F7 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs9 g) (K9 g)) :
    HoareG σ X (PK a (K9 g) g.mkt (fun m => LVs (l9 g) m)) mxA4 (HQa a) := by
  have hb := F7_bounds hF
  unfold mxA4
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc (2 * g.N * 8) (by omega) (by omega)
    (L' := fun q m => LVs (l10 {g with prod := q}) m) ?_ ?_ ?_
  · intro s hL
    exact ev_mulW (ev_mulW (ev_cw s 2) (LVs.getE hL (by simp [l9]))) (ev_cw s 8)
  · intro s st q hL
    exact LVs.dec hL "prod" q (side_of (l := l9 g) (l0 := l9 g0) (x := "prod") rfl (by decide))
  · intro q hq8 hKq
    exact stQ ce {g with prod := q} hF hout (bo_cons hbo hq8 hKq)

theorem stR {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F7 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs8 g) (K8 g)) :
    HoareG σ X (PK a (K8 g) g.mkt (fun m => LVs (l8 g) m)) mxA3 (HQa a) := by
  have hb := F7_bounds hF
  unfold mxA3
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc (g.N * 8) (by omega) (by omega)
    (L' := fun q m => LVs (l9 {g with r := q}) m) ?_ ?_ ?_
  · intro s hL
    exact ev_mulW (LVs.getE hL (by simp [l8])) (ev_cw s 8)
  · intro s st q hL
    exact LVs.dec hL "r" q (side_of (l := l8 g) (l0 := l8 g0) (x := "r") rfl (by decide))
  · intro q hq8 hKq
    exact stProd ce {g with r := q} hF hout (bo_cons hbo hq8 hKq)

theorem stBase {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F7 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs7 g) (K7 g)) :
    HoareG σ X (PK a (K7 g) g.mkt (fun m => LVs (l7 g) m)) mxA2 (HQa a) := by
  have hb := F7_bounds hF
  unfold mxA2
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc (g.N * 8) (by omega) (by omega)
    (L' := fun q m => LVs (l8 {g with base := q}) m) ?_ ?_ ?_
  · intro s hL
    exact ev_mulW (LVs.getE hL (by simp [l7])) (ev_cw s 8)
  · intro s st q hL
    exact LVs.dec hL "base" q (side_of (l := l7 g) (l0 := l7 g0) (x := "base") rfl (by decide))
  · intro q hq8 hKq
    exact stR ce {g with base := q} hF hout (bo_cons hbo hq8 hKq)


theorem stBd {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F7 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs3 g) (K3 g)) :
    HoareG σ X (PK a (K3 g) g.mkt (fun m => LVs (l6 g) m)) mxAllocs (HQa a) := by
  have hb := F7_bounds hF
  unfold mxAllocs
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc (g.BIG * 8 + 8) (by omega) (by omega)
    (L' := fun q m => LVs (l7 {g with bd := q}) m) ?_ ?_ ?_
  · intro s hL
    exact ev_addW (ev_mulW (LVs.getE hL (by simp [l6])) (ev_cw s 8)) (ev_cw s 8)
  · intro s st q hL
    exact LVs.dec hL "bd" q (side_of (l := l6 g) (l0 := l6 g0) (x := "bd") rfl (by decide))
  · intro q hq8 hKq
    exact stBase ce {g with bd := q} hF hout (bo_cons hbo hq8 hKq)

/-- `big = max(nbd, 2 * n)`. -/
theorem stBig {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F6 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs3 g) (K3 g)) :
    HoareG σ X (PK a (K3 g) g.mkt (fun m => LVs (l5 g) m))
      (.decCall (nm "big") .one (nm "max") [lv (nm "nbd"), mx2n] mxAllocs) (HQa a) := by
  have hb : g.M ≤ 1024 ∧ g.Bl ≤ 1024 ∧ g.NMD ≤ 257 ∧ g.N ≤ 257 ∧ 1 ≤ g.N ∧ g.NBD ≤ 257 := by
    obtain ⟨⟨⟨⟨⟨hM, hB⟩, hNMD⟩, hN⟩, hN1⟩, hNBD⟩ := hF
    refine ⟨hM, hB, ?_, ?_, hN1, ?_⟩ <;> omega
  have hNBD : (W g.NBD).toNat = g.NBD := toNat_W (by omega)
  have h2N : (W (2 * g.N)).toNat = 2 * g.N := toNat_W (by omega)
  refine hoareG_decCallK ce.ha ce.mx ce.mxF (by simp [sgAA]) rfl
    (Fct := fun w => w.toNat = max g.NBD (2 * g.N)) (L' := fun w m => LVs (("big", w) :: l5 g) m)
    ?_ ?_ ?_ ?_
  · intro s _ hLs Γ p he hh hK vs hvs
    have e1 : ev s (lv (nm "nbd")) = some (V (W g.NBD)) := LVs.getE hLs (by simp [l5])
    have e2 : ev s mx2n = some (V (W (2 * g.N))) :=
      ev_mulW (ev_cw s 2) (LVs.getE hLs (by simp [l5]))
    rw [evs_cons e1 (evs_cons e2 evs_nil)] at hvs
    cases hvs
    exact ⟨argsOK_any (by simp [sgAA]) rfl, fun x hx => absurd hx (argCells_any (by simp [sgAA])),
      fun _ => trivial⟩
  · intro s hLs vs hvs callee v st hR' hsh
    have e1 : ev s (lv (nm "nbd")) = some (V (W g.NBD)) := LVs.getE hLs (by simp [l5])
    have e2 : ev s mx2n = some (V (W (2 * g.N))) :=
      ev_mulW (ev_cw s 2) (LVs.getE hLs (by simp [l5]))
    rw [evs_cons e1 (evs_cons e2 evs_nil)] at hvs
    cases hvs
    obtain ⟨w, hv, hw⟩ := hR' (by simp [Good]) v rfl _ _ rfl
    exact ⟨w, hv, by rw [hw, hNBD, h2N]⟩
  · intro s st w hL
    exact LVs.dec hL "big" w (side_of (l := l5 g) (l0 := l5 g0) (x := "big") rfl (by decide))
  · intro w hw
    obtain ⟨BIGv, hlt, rfl⟩ := exists_W w
    rw [toNat_W hlt] at hw
    exact stBd ce {g with BIG := BIGv} ⟨hF, hw⟩ hout hbo

theorem stNBD {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F5 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs3 g) (K3 g)) :
    HoareG σ X (PK a (K3 g) g.mkt (fun m => LVs (l4 g) m))
      (.dec (nm "nbd") .one (.shift .lsr (.op .add [lv (nm "blen"), cw 3]) (cw 2))
        (.decCall (nm "big") .one (nm "max") [lv (nm "nbd"), mx2n] mxAllocs)) (HQa a) := by
  have hb : g.Bl ≤ 1024 := hF.1.1.1.2
  refine hoareG_decK ce.ha.hH (L' := fun m => LVs (l5 {g with NBD := (g.Bl + 3) / 2 ^ 2}) m) ?_ ?_
  · intro s _ hL v hv
    have e : ev s (.shift .lsr (.op .add [lv (nm "blen"), cw 3]) (cw 2)) =
        some (V (W ((g.Bl + 3) / 2 ^ 2))) :=
      ev_lsrW 2 (by norm_num) (by omega) (ev_addW (LVs.getE hL (by simp [l4])) (ev_cw s 3))
    rw [e] at hv
    cases hv
    exact LVs.dec (st := s) hL "nbd" _ (side_of (l := l4 g) (l0 := l4 g0) (x := "nbd") rfl (by decide))
  · exact stBig ce {g with NBD := (g.Bl + 3) / 2 ^ 2} ⟨hF, rfl⟩ hout hbo


theorem stN {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F4 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs3 g) (K3 g)) :
    HoareG σ X (PK a (K3 g) g.mkt (fun m => LVs (l4 g) m)) mxN (HQa a) := by
  have hb : g.M ≤ 1024 ∧ g.N ≤ 257 := by
    obtain ⟨⟨⟨hM, hB⟩, hNMD⟩, hN⟩ := hF
    exact ⟨hM, by omega⟩
  have hM : (W g.M).toNat = g.M := toNat_W (by omega)
  unfold mxN
  refine hoareG_seqK (L := fun m => LVs (l4 g) m ∧ 1 ≤ g.N) (hoareG_iteK ?_ ?_) ?_
  · refine hoareG_pre (hoareG_seqK2 (L := fun m => LVs (l4 g) m) (K' := K3 g) ?_
      (hoareG_conseq (hoareG_relRet ce.ha ce.hRel (K := K3 g) (MK := g.mkt) (L := fun m => LVs (l4 g) m)
        (fun s h => LVs.getE h (by simp [l4]))) (fun _ _ h => h) (fun r t _ _ h => rq_spk h)))
      (fun s _ h => h.1)
    refine hoareG_callK ce.ha ce.hgrow ce.mz (by simp [Helpers.sigMemzero]) rfl ?_
    intro s _ hLs Γ p he hh hK vs hvs
    have e1 : ev s (lv (nm "out")) = some (V g.o) := LVs.getE hLs (by simp [l4])
    have e2 : ev s (lv (nm "mlen")) = some (V (W g.M)) := LVs.getE hLs (by simp [l4])
    rw [evs_cons e1 (evs_cons e2 evs_nil)] at hvs
    cases hvs
    refine ⟨argsOK_mz ?_, fun x hx => hout.foot x ?_, fun _ => trivial⟩
    · rw [hM]; exact bufOK_later ce.ha hh he hout.buf
    · have := argCells_mz hx
      rwa [hM] at this
  · refine hoareG_skip fun s _ ⟨⟨hL, hK⟩, hw⟩ => ?_
    have e1 : ev s (lv (nm "n")) = some (V (W g.N)) := LVs.getE hL (by simp [l4])
    rw [ev_cmp e1 (ev_cw s 0)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
      Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hw
    have hN1 : 1 ≤ g.N := by
      by_contra hcon
      have h0 : g.N = 0 := by omega
      rw [h0] at hw
      simp at hw
    exact ⟨fun _ => ⟨⟨hL, hN1⟩, hK⟩, fun r' h => absurd h (by simp)⟩
  · intro s hs ⟨⟨hL, hN1⟩, hK⟩ hg
    exact stNBD ce g ⟨hF, hN1⟩ hout hbo s hs ⟨hL, hK⟩ hg

theorem stDL {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F2 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs3 g) (K3 g)) :
    HoareG σ X (PK a (K3 g) g.mkt (fun m => LVs (l3 g) m))
      (.decCall (nm "n") .one (nm "digits_len") [lv (nm "md"), lv (nm "nmd")] mxN) (HQa a) := by
  have hb : g.M ≤ 1024 ∧ g.NMD ≤ 257 := by
    obtain ⟨⟨hM, hB⟩, hNMD⟩ := hF
    exact ⟨hM, by omega⟩
  have hNMD : (W g.NMD).toNat = g.NMD := toNat_W (by omega)
  refine hoareG_decCallK ce.ha ce.dl ce.dlF (by simp [sgAA]) rfl
    (Fct := fun w => w.toNat ≤ g.NMD) (L' := fun w m => LVs (("n", w) :: l3 g) m) ?_ ?_ ?_ ?_
  · intro s _ hLs Γ p he hh hK vs hvs
    have e1 : ev s (lv (nm "md")) = some (V g.md) := LVs.getE hLs (by simp [l3])
    have e2 : ev s (lv (nm "nmd")) = some (V (W g.NMD)) := LVs.getE hLs (by simp [l3])
    rw [evs_cons e1 (evs_cons e2 evs_nil)] at hvs
    cases hvs
    exact ⟨argsOK_any (by simp [sgAA]) rfl, fun x hx => absurd hx (argCells_any (by simp [sgAA])),
      fun _ => trivial⟩
  · intro s hLs vs hvs callee v st hR' hsh
    have e1 : ev s (lv (nm "md")) = some (V g.md) := LVs.getE hLs (by simp [l3])
    have e2 : ev s (lv (nm "nmd")) = some (V (W g.NMD)) := LVs.getE hLs (by simp [l3])
    rw [evs_cons e1 (evs_cons e2 evs_nil)] at hvs
    cases hvs
    obtain ⟨-, -, hret⟩ := hR' (by simp [Good])
    obtain ⟨N', hv, hle, -⟩ := hret v rfl _ _ rfl
    exact ⟨N', hv, by rw [hNMD] at hle; exact hle⟩
  · intro s st w hL
    exact LVs.dec hL "n" w (side_of (l := l3 g) (l0 := l3 g0) (x := "n") rfl (by decide))
  · intro w hw
    obtain ⟨Nv, hlt, rfl⟩ := exists_W w
    rw [toNat_W hlt] at hw
    exact stN ce {g with N := Nv} ⟨hF, hw⟩ hout hbo

theorem stBfb1 {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F2 g) (hout : OutOK a g.o g.M)
    (hbo : BO a (bs3 g) (K3 g)) :
    HoareG σ X (PK a (K3 g) g.mkt (fun m => LVs (l3 g) m))
      (.seq (callD (nm "bn_from_be") [lv (nm "mp"), lv (nm "mlen"), lv (nm "md")])
        (.decCall (nm "n") .one (nm "digits_len") [lv (nm "md"), lv (nm "nmd")] mxN)) (HQa a) := by
  have hb : g.M ≤ 1024 := hF.1.1
  have hNMD := hF.2
  have hM : (W g.M).toNat = g.M := toNat_W (by omega)
  refine hoareG_seqK (L := fun m => LVs (l3 g) m) ?_ (stDL ce g hF hout hbo)
  refine hoareG_callK ce.ha ce.hgrow ce.bfb (by simp [Bn.bnFromBeSig]) rfl ?_
  intro s _ hLs Γ p he hh hK vs hvs
  have e1 : ev s (lv (nm "mp")) = some (V g.mp) := LVs.getE hLs (by simp [l3])
  have e2 : ev s (lv (nm "mlen")) = some (V (W g.M)) := LVs.getE hLs (by simp [l3])
  have e3 : ev s (lv (nm "md")) = some (V g.md) := LVs.getE hLs (by simp [l3])
  rw [evs_cons e1 (evs_cons e2 (evs_cons e3 evs_nil))] at hvs
  cases hvs
  obtain ⟨hbd1, hbd2⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK
    (b := g.md.toNat) (n := g.NMD * 8 + 8) (m := 2 * (W g.M).toNat + 6)
    (by simp [bs3]) (by rw [hM]; omega) a.Cb
  exact ⟨argsOK_bfb hbd1, fun x hx => hbd2 x (argCells_bfb hx), fun s' => trivial⟩

theorem stMd {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F2 g) (hout : OutOK a g.o g.M)
    (hbo : BO a [] g.mkt.toNat) :
    HoareG σ X (PK a g.mkt.toNat g.mkt (fun m => LVs (l2 g) m))
      (.decCall (nm "md") .one (nm "alloc") [.op .add [.panop .mul [lv (nm "nmd"), cw 8], cw 8]]
        (.seq (callD (nm "bn_from_be") [lv (nm "mp"), lv (nm "mlen"), lv (nm "md")])
          (.decCall (nm "n") .one (nm "digits_len") [lv (nm "md"), lv (nm "nmd")] mxN))) (HQa a) := by
  have hb : g.M ≤ 1024 := hF.1.1
  have hNMD := hF.2
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc (g.NMD * 8 + 8) (by omega) (by omega)
    (L' := fun q m => LVs (l3 {g with md := q}) m) ?_ ?_ ?_
  · intro s hL
    exact ev_addW (ev_mulW (LVs.getE hL (by simp [l2])) (ev_cw s 8)) (ev_cw s 8)
  · intro s st q hL
    exact LVs.dec hL "md" q (side_of (l := l2 g) (l0 := l2 g0) (x := "md") rfl (by decide))
  · intro q hq8 hKq
    exact stBfb1 ce {g with md := q} hF hout (bo_cons hbo hq8 hKq)

theorem stNmd {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F1 g) (hout : OutOK a g.o g.M)
    (hbo : BO a [] g.mkt.toNat) :
    HoareG σ X (PK a g.mkt.toNat g.mkt (fun m => LVs (l1 g) m))
      (.dec (nm "nmd") .one (.shift .lsr (.op .add [lv (nm "mlen"), cw 3]) (cw 2))
        (.decCall (nm "md") .one (nm "alloc") [.op .add [.panop .mul [lv (nm "nmd"), cw 8], cw 8]]
          (.seq (callD (nm "bn_from_be") [lv (nm "mp"), lv (nm "mlen"), lv (nm "md")])
            (.decCall (nm "n") .one (nm "digits_len") [lv (nm "md"), lv (nm "nmd")] mxN))))
      (HQa a) := by
  have hb : g.M ≤ 1024 := hF.1
  refine hoareG_decK ce.ha.hH (L' := fun m => LVs (l2 {g with NMD := (g.M + 3) / 2 ^ 2}) m) ?_ ?_
  · intro s _ hL v hv
    have e : ev s (.shift .lsr (.op .add [lv (nm "mlen"), cw 3]) (cw 2)) =
        some (V (W ((g.M + 3) / 2 ^ 2))) :=
      ev_lsrW 2 (by norm_num) (by omega) (ev_addW (LVs.getE hL (by simp [l1])) (ev_cw s 3))
    rw [e] at hv
    cases hv
    exact LVs.dec (st := s) hL "nmd" _ (side_of (l := l1 g) (l0 := l1 g0) (x := "nmd") rfl (by decide))
  · exact stMd ce {g with NMD := (g.M + 3) / 2 ^ 2} ⟨hF, rfl⟩ hout hbo


/-- The first statement `var mark = heap_mark();`, from the entry state. -/
theorem stMark {a : Act σ} (ce : CE σ X a) (g : MG) (hF : F1 g) (hout : OutOK a g.o g.M)
    (hh : Heap a a.Γ0 a.p0 a.s0) (hloc : LVs (l0 g) a.s0.locals) :
    HoareG σ X (fun t => t = a.s0) mxBody (HQa a) := by
  unfold mxBody
  refine hoareG_decCall (FunSpec.and ce.hMk (funSpec_be' (nm "heap_mark"))) ?_ ?_
  · intro s hs hP vs hvs callee v st ⟨hR, hbe⟩ hctx hsh
    subst hP
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hg, hv⟩ := hR (by simp [Good]) hvs0
    obtain ⟨w, hgw, hwp⟩ := gword_get hh.2.1 Region.heap
    have hv' := mark_val_word (hv v rfl) hgw
    subst hv'
    have hd : st.memaddrs = a.s0.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh1 := heap_congr (s := a.s0) ce.ha.hH hm hg hd hbe hh
    have hwp' : w.toNat = a.p0.hp := hwp
    refine hoareG_conseq (stNmd ce {g with mkt := w} hF hout ⟨le_of_eq hwp'.symm, fun b hb => by simp at hb⟩)
      (fun t _ ht => ?_) (fun r t _ _ hq => hqa_locals ce.ha.hH _ hq)
    subst ht
    refine ⟨LVs.dec hloc "mark" w (side_of (l := l0 g) (l0 := l0 g0) (x := "mark") rfl (by decide)),
      a.Γ0, a.p0, ext_refl _, heap_congr (s := st) ce.ha.hH rfl rfl rfl rfl hh1, le_of_eq hwp', ?_⟩
    exact (win_new hh hwp).2.2
  · intro s hs hP vs hvs callee r st ⟨hR, hbe⟩ hctx habn r' hr' hna
    subst hP
    cases hr'
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    have hg0 : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    obtain ⟨hm, hg, -⟩ := hR hg0 hvs0
    have hd : st.memaddrs = a.s0.memaddrs := hctx.2.1.trans hs.2.1.symm
    exact ⟨a.Γ0, a.p0, ext_refl _, heap_congr (s := a.s0) (t := emptyLocalsHOLFinite st) ce.ha.hH hm hg hd hbe hh⟩

/-! ## The summary -/

def mxSig : Sig := ⟨[.any, .any, .any, .any, .any, .any, .bufArg 5 1 0], [], [], false⟩

/-- **The caller obligation**: `blen, mlen ≤ 1024`. -/
def MxPre (vs : List (ValueHOL 64)) (_ : State σ) (_ : Gam) : Prop :=
  ∀ BL ML : BitVec 64, argW vs 1 = some BL → argW vs 5 = some ML → BL.toNat ≤ 1024 ∧ ML.toNat ≤ 1024

theorem toSA {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig} (h : CSumm σ X C H f sg []) :
    SumSpecA σ X C H f sg (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpecA_mono h (fun _ _ _ _ c hc => absurd hc (by simp))
    (fun _ _ _ _ hcap => by obtain ⟨c, hc, -⟩ := hcap; exact absurd hc (by simp))
    (fun _ _ _ _ _ _ h => h)

/-- `csumm_of_heap` with a hand precondition. -/
theorem sumSpecA_of_heap' {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ (Γ0 : Gam) (p0 : Ptrs),
        Pre vs s0 Γ0 →
        ActOK (actOf C H sg [] vs s0 Γ0 p0) X → Heap (actOf C H sg [] vs s0 Γ0 p0) Γ0 p0 s0 →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → ¬ Abortive r' →
          ∃ Γ' p', Ext Γ0 Γ' ∧ Heap (actOf C H sg [] vs s0 Γ0 p0) Γ' p' t ∧
            ∀ v, r' = .returned v → RetOK Γ' p0 p' vs sg.ret v)) :
    SumSpecA σ X C H f sg Pre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hpre
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS (capsOK_nil C sg) hG hps hargs
    (fun c hc => by cases hc)
  have HH := h vs body callee rs hl s hs hloc Γ p1 hpre ha hh s hs rfl (by rw [hr]; exact hgood)
  rw [hr] at HH
  obtain ⟨Γ', p', hext, hh', hret⟩ := HH r rfl hna
  refine ⟨Γ', p1, p', sumCore_pw_mono' (act_exit (capsOK_nil C sg) hps hext hh' hret) ?_, trivial⟩
  rintro x ⟨hx, c, hc, -⟩
  cases hc

/-- **`modexp`**: generic in the hook family; the callee summaries of the fold table are hypotheses. -/
theorem sumSpecA_modexp {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hDL : CSumm σ X Types.guestC H (nm "digits_len") sgAA [])
    (hMx : CSumm σ X Types.guestC H (nm "max") sgAA [])
    (hBT : CSumm σ X Types.guestC H (nm "be_top_bit") sgAA [])
    (hMZ : CSumm σ X Types.guestC H (nm "memzero") Helpers.sigMemzero [])
    (hMC : CSumm σ X Types.guestC H (nm "memcpy") Helpers.sigMemcpy []) :
    SumSpecA σ X Types.guestC H (nm "modexp") mxSig MxPre (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) := by
  refine sumSpecA_of_heap' hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 hs hloc Γ0 p0 hpre ha hh
  rw [hF.hX] at hl
  obtain ⟨rfl, -, hlen, hall⟩ := lookupCode_gen code_modexp hl
  rcases vs with _ | ⟨A0, _ | ⟨A1, _ | ⟨A2, _ | ⟨A3, _ | ⟨A4, _ | ⟨A5, _ | ⟨A6, _ | ⟨A7, vs⟩⟩⟩⟩⟩⟩⟩⟩ <;>
    simp [mxPs] at hlen
  have h0 := hall 0 (by simp [mxPs]) (by simp)
  have h1 := hall 1 (by simp [mxPs]) (by simp)
  have h2 := hall 2 (by simp [mxPs]) (by simp)
  have h3 := hall 3 (by simp [mxPs]) (by simp)
  have h4 := hall 4 (by simp [mxPs]) (by simp)
  have h5 := hall 5 (by simp [mxPs]) (by simp)
  have h6 := hall 6 (by simp [mxPs]) (by simp)
  obtain ⟨BP, rfl⟩ := val_of_shapeEq_one h0.2
  obtain ⟨BL, rfl⟩ := val_of_shapeEq_one h1.2
  obtain ⟨EP, rfl⟩ := val_of_shapeEq_one h2.2
  obtain ⟨EL, rfl⟩ := val_of_shapeEq_one h3.2
  obtain ⟨MP, rfl⟩ := val_of_shapeEq_one h4.2
  obtain ⟨ML, rfl⟩ := val_of_shapeEq_one h5.2
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one h6.2
  obtain ⟨hBL, hML⟩ := hpre BL ML rfl rfl
  set a : Act σ := actOf Types.guestC H mxSig [] [V BP, V BL, V EP, V EL, V MP, V ML, V O] s0 Γ0 p0
    with ha_def
  let g : MG := { g0 with bp := BP, ep := EP, el := EL, mp := MP, o := O }
  let g : MG := { g with Bl := BL.toNat, M := ML.toNat }
  have hloc2 : a.s0.locals = callee := hloc
  have hloc' : LVs (l0 g) a.s0.locals := by
    intro p hp
    simp only [l0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · rw [hloc2]; exact h0.1
    · show _ = some (V (W BL.toNat))
      rw [hloc2, W_toNat]; exact h1.1
    · rw [hloc2]; exact h2.1
    · rw [hloc2]; exact h3.1
    · rw [hloc2]; exact h4.1
    · show _ = some (V (W ML.toNat))
      rw [hloc2, W_toNat]; exact h5.1
    · rw [hloc2]; exact h6.1
  have hL0 : Layout a.C a.p0 a.Γ0 := by
    obtain ⟨p1, hp1, hord, hL, -⟩ := id hh.1
    rw [hh.2.1] at hp1
    cases hp1
    exact hL
  obtain ⟨v6, hv6, w6, x6, hw6, hx6, hbuf6⟩ := Bn2.argAt ha.hargs0 (i := 6) (pt := .bufArg 5 1 0) rfl
  have hv6' : v6 = V O := by
    have : [V BP, V BL, V EP, V EL, V MP, V ML, V O][6]? = some v6 := hv6
    simpa using this.symm
  subst hv6'
  have hw6' : w6 = O := by
    have : wordOf (V O) = some w6 := hw6
    simpa [wordOf, V] using this.symm
  have hx6' : x6 = ML := by
    have : argW [V BP, V BL, V EP, V EL, V MP, V ML, V O] 5 = some x6 := hx6
    simpa [argW, wordOf, V] using this.symm
  rw [hw6', hx6'] at hbuf6
  have hout : OutOK a O ML.toNat :=
    ⟨hbuf6, fun x hx => Or.inr (Or.inl (WaveHelpers.argCells_bufArg_at (i := 6) (j := 5) (c := 1)
      (d := 0) rfl rfl rfl hx))⟩
  have ce : CE σ X a :=
    { ha := ha
      hgrow := rfl
      hL0 := hL0
      bfb := Bn.sumSpec_bn_from_be hF
      btb := Bn.sumSpec_bn_to_be hF
      mul := Bn2.sumSpec_bn_mul hF
      mod := Bn2.sumSpec_bn_mod hF
      mz := toSA hMZ
      mc := toSA hMC
      dl := toSA hDL
      dlF := Helpers.funSpec_digits_len hF.hX
      mx := toSA hMx
      mxF := funSpec_max hF.hX
      bt := toSA hBT
      hAl := allocSpec_alloc hF.hX
      hAc := summ_alloc_heap hF.hX hF.hH hF.hAC
      hRel := releaseSpec_heap_release hF.hX
      hMk := markSpec'_heap_mark hF.hX }
  have H := stMark ce g ⟨hML, hBL⟩ hout hh hloc'
  refine hoareG_conseq H (fun t _ ht => ht) (fun r t _ _ hq r' hr hna => ?_)
  obtain ⟨Γ', p', he, hh'⟩ := hq r' hr hna
  exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [mxSig] at hrt⟩

end InitECandidate.Solver.MemSafe.Mod

#print axioms InitECandidate.Solver.MemSafe.Mod.stMark
#print axioms InitECandidate.Solver.MemSafe.Mod.sumSpecA_modexp
