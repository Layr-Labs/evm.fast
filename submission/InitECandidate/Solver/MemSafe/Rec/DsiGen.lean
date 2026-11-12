import InitECandidate.Solver.MemSafe.Rec.DsiKit
import InitECandidate.Solver.MemSafe.Rec.DecPayEP

set_option autoImplicit false

/-!
# `decode_stateless_input`: generic steps

`ej_call` (the client predicate across a summarised call), `ds_st_keep` / `ds_st_pl` (stores into the
`si` block), `ds_call1` / `ds_call2` (`var x = f(args)` for a callee with `any` parameters and one /
two result words), `ds_ret` (`return si`: the block becomes a `tSI` object).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (tPL tSLA tSI)
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.MemSafe.Node (NQ nq_of_abn nq_locals)

variable {σ : Type} {X : Ctx 64}

theorem heapEnd_lt64' : heapEnd < 2 ^ 64 := heapEnd_lt64

theorem cell_toNat64 {Ar : BitVec 64} {j : Nat} (h : Ar.toNat + 8 * j < 2 ^ 64) (hj : 8 * j < 2 ^ 64) :
    (Ar + BitVec.ofNat 64 (8 * j)).toNat = Ar.toNat + 8 * j := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt hj, Nat.mod_eq_of_lt h]

theorem ne_cell {Ar : BitVec 64} {j : Nat} (hj : 0 < j) (hj2 : 8 * j < 2 ^ 64) :
    Ar ≠ Ar + BitVec.ofNat 64 (8 * j) := by
  intro e
  have := ofNat_cancel (Ar := Ar) (x := 0) (y := 8 * j) (by omega) hj2 (by simpa using e)
  omega

/-- **The client predicate across a summarised call.** -/
theorem ej_call {a : Act σ} (ha : ActOK a X) (hCb : a.Cb = Types.guestC)
    {sg' : Sig} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} (co : COut a sg' Γ Γ' q q' s st)
    {Ar : BitVec 64} {n : Nat} (hB : BlkF Ar n Γ q) {Bf : Option (BitVec 64)}
    (h0 : ∀ pl, Bf = some pl → Overlap Ar.toNat n Ar) {Φ : Prop} {Cz : Mem → BitVec 64 → Prop}
    (h : EJ Φ Ar Bf Cz Γ q s.memory s.globals) : EJ Φ Ar Bf CzT Γ' q' st.memory st.globals := by
  obtain ⟨hΦ, -, hBk⟩ := h
  obtain ⟨W, hW, -⟩ := glob_at ha co.heap (g := nm "ssz_offs") (n := 32) (hCb ▸ scalarGlob_ssz_offs)
  refine ⟨hΦ, ⟨W, hW, trivial⟩, fun pl hpl => ?_⟩
  obtain ⟨e1, e2⟩ := hBk pl hpl
  refine ⟨?_, plO_ext co.ext e2⟩
  have hov := h0 pl hpl
  have : st.memory Ar = s.memory Ar := by
    refine co.frame _ ?_ (hB _ hov).2
    rintro ⟨o', ho', k, hk, -, hc⟩
    obtain ⟨p1, hp1, hord, hL, -⟩ := co.heap0.1
    exact (hB _ hov).1 (hc ▸ cell_in hord hL ho' hk)
  rw [Hooks.rd_congr this]; exact e1


/-- The word of a one-word value. -/
def wd : ValueHOL 64 → BitVec 64
  | .val (.word w) => w
  | _ => 0

def wdA : ValueHOL 64 → BitVec 64
  | .rStruct [.val (.word x), _] => x
  | _ => 0

def wdB : ValueHOL 64 → BitVec 64
  | .rStruct [_, .val (.word y)] => y
  | _ => 0

/-- The struct local `x` holds the pair. -/
def LS (xn : MlS) (x y : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup xn = some (.rStruct [.val (.word x), .val (.word y)])

theorem ds_st_keep {a : Act σ} (ha : ActOK a X) {Ar : BitVec 64}
    (hAr : Ar.toNat + 96 ≤ heapEnd) {k : Nat} (hk8 : k % 8 = 0) (hk : k + 8 ≤ 96) (hk0 : k ≠ 0)
    {L : LocalsH → Prop} (hsi : ∀ m, L m → m.lookup (nm "si") = some (.val (.word Ar)))
    {e : ExpHOL 64}
    (hval : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      ∃ x, v = .val (.word x)) {Φ : Prop} {Bf : Option (BitVec 64)} :
    HoareG σ X (DI a Ar 96 L (EJ Φ Ar Bf CzT)) (.store (.op .add [lv (nm "si"), cw k]) e)
      (DQ a Ar 96 L (EJ Φ Ar Bf CzT)) := by
  have hse := heapEnd_lt64
  refine hoareG_stDI ha (by omega) ?_ hval ?_
  · intro s hs hL w hw
    rw [ev_add2 (ev_lw (hsi _ hL)) (ev_cw _ k)] at hw
    cases hw
    exact ⟨k / 8, by omega, by congr 2; omega⟩
  · intro s Γ q j x mem hs hL hj ha' hv' hrd hmem hB hE
    rw [ev_add2 (ev_lw (hsi _ hL)) (ev_cw _ k)] at ha'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha'
    have hjk : k = 8 * j := ofNat_cancel (by omega) (by omega) ha'
    obtain ⟨hΦ, ⟨W, hW, -⟩, hBk⟩ := hE
    refine ⟨hΦ, ⟨W, hW, trivial⟩, fun pl hpl => ?_⟩
    obtain ⟨e1, e2⟩ := hBk pl hpl
    refine ⟨?_, e2⟩
    rw [Hooks.rd_congr (hmem Ar (ne_cell (j := j) (by omega) (by omega)))]; exact e1

theorem ds_st_pl {a : Act σ} (ha : ActOK a X) {Ar : BitVec 64}
    (hAr : Ar.toNat + 96 ≤ heapEnd)
    {L : LocalsH → Prop} (hsi : ∀ m, L m → m.lookup (nm "si") = some (.val (.word Ar)))
    {x : BitVec 64} (hx : ∀ m, L m → m.lookup (nm "pl") = some (.val (.word x))) {Φ : Prop} :
    HoareG σ X (DI a Ar 96 L (fun Γ q m g => EJ Φ Ar none CzT Γ q m g ∧ PlO Γ x))
      (.store (.op .add [lv (nm "si"), cw 0]) (lv (nm "pl")))
      (DQ a Ar 96 L (EJ Φ Ar (some x) CzT)) := by
  have hse := heapEnd_lt64
  refine hoareG_stDI ha (by omega) ?_ ?_ ?_
  · intro s hs hL w hw
    rw [ev_add2 (ev_lw (hsi _ hL)) (ev_cw _ 0)] at hw
    cases hw
    exact ⟨0, by omega, by simp⟩
  · intro s hs hL v hv
    rw [ev_lw (hx _ hL)] at hv
    exact ⟨x, (Option.some.inj hv).symm⟩
  · intro s Γ q j x' mem hs hL hj ha' hv' hrd hmem hB hE
    rw [ev_add2 (ev_lw (hsi _ hL)) (ev_cw _ 0)] at ha'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha'
    have hj0 : 0 = 8 * j := ofNat_cancel (by omega) (by omega) ha'
    have hj0' : j = 0 := by omega
    subst hj0'
    rw [ev_lw (hx _ hL)] at hv'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hv'
    subst hv'
    obtain ⟨⟨hΦ, ⟨W, hW, -⟩, -⟩, hP⟩ := hE
    refine ⟨hΦ, ⟨W, hW, trivial⟩, fun pl hpl => ?_⟩
    cases hpl
    refine ⟨?_, hP⟩
    simpa using hrd


theorem ds_call1 {a : Act σ} (ha : ActOK a X) (hCb : a.Cb = Types.guestC) {Ar : BitVec 64} {n : Nat}
    {kv : List (MlS × BitVec 64)} {Φ : Prop} {Bf : Option (BitVec 64)}
    (hov : ∀ pl, Bf = some pl → Overlap Ar.toNat n Ar) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' []) (hps : ∀ pt ∈ sg'.params, pt = .any)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    (hlen : ∀ s : State σ, InCtx s X → LK kv s.locals → ∀ vs, evs s args = some vs →
      sg'.params.length = vs.length)
    {x : MlS} (hx : ∀ q ∈ kv, q.1 ≠ x) {k : ProgHOL 64} {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    (hk : ∀ w, HoareG σ X (DI a Ar n (LK ((x, w) :: kv)) (EJ Φ Ar Bf CzT)) k (NQ a Rv)) :
    HoareG σ X (DI a Ar n (LK kv) (EJ Φ Ar Bf CzT)) (.decCall x .one f args k) (NQ a Rv) := by
  refine hoareG_decCallDI (E := EJ Φ Ar Bf CzT) (L := LK kv) (L' := fun v => LK ((x, wd v) :: kv))
    (E' := fun _ => EJ Φ Ar Bf CzT) ha hf (funSpec_true _) hps hgw hgr hlen ?_ ?_
    (fun v => hk (wd v))
  · intro s st v hL hsh
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    exact lk_set (s := { st with locals := s.locals }) hL w hx
  · intro s st vs callee v Γ Γ' q q' hs hL hvs hLc he hh hB hn hE co hsh
    exact ⟨Γ', q', ext_trans he co.ext, co.heap,
      blkF_after (heap_ord hh) (heap_ord co.heap) co.mono co.nf hB, ej_call ha hCb co hB hov hE⟩

theorem ds_call2 {a : Act σ} (ha : ActOK a X) (hCb : a.Cb = Types.guestC) {Ar : BitVec 64} {n : Nat}
    {kv : List (MlS × BitVec 64)} {Φ : Prop} {Bf : Option (BitVec 64)}
    (hov : ∀ pl, Bf = some pl → Overlap Ar.toNat n Ar) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' []) (hps : ∀ pt ∈ sg'.params, pt = .any)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    (hlen : ∀ s : State σ, InCtx s X → LK kv s.locals → ∀ vs, evs s args = some vs →
      sg'.params.length = vs.length)
    {xn : MlS} (hx : ∀ q ∈ kv, q.1 ≠ xn) {k : ProgHOL 64} {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    (hk : ∀ x y, HoareG σ X (DI a Ar n (fun m => LK kv m ∧ LS xn x y m) (EJ Φ Ar Bf CzT)) k
      (NQ a Rv)) :
    HoareG σ X (DI a Ar n (LK kv) (EJ Φ Ar Bf CzT)) (.decCall xn (.comb [.one, .one]) f args k)
      (NQ a Rv) := by
  refine hoareG_decCallDI (E := EJ Φ Ar Bf CzT) (L := LK kv)
    (L' := fun v m => LK kv m ∧ LS xn (wdA v) (wdB v) m)
    (E' := fun _ => EJ Φ Ar Bf CzT) ha hf (funSpec_true _) hps hgw hgr hlen ?_ ?_
    (fun v => hk (wdA v) (wdB v))
  · intro s st v hL hsh
    obtain ⟨x, y, rfl⟩ := rstruct_of_shape hsh
    refine ⟨fun q hq => ?_, lk_set_self _ _ _⟩
    rw [lk_set_ne (s := { st with locals := s.locals }) _ (Ne.symm (hx q hq))]; exact hL q hq
  · intro s st vs callee v Γ Γ' q q' hs hL hvs hLc he hh hB hn hE co hsh
    exact ⟨Γ', q', ext_trans he co.ext, co.heap,
      blkF_after (heap_ord hh) (heap_ord co.heap) co.mono co.nf hB, ej_call ha hCb co hB hov hE⟩

end InitECandidate.Solver.MemSafe.Rec
