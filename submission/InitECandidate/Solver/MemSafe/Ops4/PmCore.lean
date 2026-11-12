import InitECandidate.Solver.MemSafe.Ops4.PmRules
import InitECandidate.Solver.MemSafe.Rpg.InstR
import InitECandidate.Solver.MemSafe.Mod.Modexp
import InitECandidate.Solver.MemSafe.Mod.KitC
import InitECandidate.Solver.MemSafe.Mod.PreCode
import InitECandidate.Solver.MemSafe.Pre.DispatchR
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false

/-!
# `pre_modexp`: the summary

`CSumm … (nm "pre_modexp") preSig evCaps`, `preSig = ⟨[], [], [], false⟩`, `evCaps = [⟨nm "ev", 0, [8, 23], false⟩]`
(the shape of the other `pre_*` fold entries, so it plugs into `Pre.csumm_run_precompile_guestR`).
The three guards (`blen`, `elen`, `mlen` `>+ 1024` raise EvmErr) give `modexp`'s `MxPre`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ops4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Mod
open InitECandidate.Solver.MemSafe.Rpg (capE)

variable {σ : Type} {X : Ctx 64}

/-- The ghost values of the locals of `pre_modexp`. -/
structure PM where
  msg : ValueHOL 64
  data : ValueHOL 64
  n : ValueHOL 64
  hdr : BitVec 64
  bl : ValueHOL 64
  el : ValueHOL 64
  ml : ValueHOL 64
  head : ValueHOL 64
  cost : ValueHOL 64
  out : BitVec 64
  mkt : BitVec 64
  bp : BitVec 64
  ep : BitVec 64
  mp : BitVec 64
  Bl : Nat
  El : Nat
  M : Nat
  hl : Nat

def sgBR : Sig := ⟨[.any, .any, .any, .any, .bufArg 3 1 0], [], [], false⟩

def g1 : PM := ⟨.val (.word 0), .val (.word 0), .val (.word 0), 0, .val (.word 0), .val (.word 0),
  .val (.word 0), .val (.word 0), .val (.word 0), 0, 0, 0, 0, 0, 0, 0, 0, 0⟩

def p0 (g : PM) : List (String × ValueHOL 64) := []

def p1 (g : PM) : List (String × ValueHOL 64) :=
  [("msg", g.msg)]

def p2 (g : PM) : List (String × ValueHOL 64) :=
  [("data", g.data), ("msg", g.msg)]

def p3 (g : PM) : List (String × ValueHOL 64) :=
  [("n", g.n), ("data", g.data), ("msg", g.msg)]

def p4 (g : PM) : List (String × ValueHOL 64) :=
  [("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p5 (g : PM) : List (String × ValueHOL 64) :=
  [("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p6 (g : PM) : List (String × ValueHOL 64) :=
  [("blen", V (W g.Bl)), ("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p7 (g : PM) : List (String × ValueHOL 64) :=
  [("el", g.el), ("blen", V (W g.Bl)), ("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p8 (g : PM) : List (String × ValueHOL 64) :=
  [("elen", V (W g.El)), ("el", g.el), ("blen", V (W g.Bl)), ("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p9 (g : PM) : List (String × ValueHOL 64) :=
  [("ml", g.ml), ("elen", V (W g.El)), ("el", g.el), ("blen", V (W g.Bl)), ("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p10 (g : PM) : List (String × ValueHOL 64) :=
  [("mlen", V (W g.M)), ("ml", g.ml), ("elen", V (W g.El)), ("el", g.el), ("blen", V (W g.Bl)), ("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p11 (g : PM) : List (String × ValueHOL 64) :=
  [("exp_start", V (W (96 + g.Bl))), ("mlen", V (W g.M)), ("ml", g.ml), ("elen", V (W g.El)), ("el", g.el), ("blen", V (W g.Bl)), ("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p12 (g : PM) : List (String × ValueHOL 64) :=
  [("hlen", V (W g.hl)), ("exp_start", V (W (96 + g.Bl))), ("mlen", V (W g.M)), ("ml", g.ml), ("elen", V (W g.El)), ("el", g.el), ("blen", V (W g.Bl)), ("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p13 (g : PM) : List (String × ValueHOL 64) :=
  [("head", g.head), ("hlen", V (W g.hl)), ("exp_start", V (W (96 + g.Bl))), ("mlen", V (W g.M)), ("ml", g.ml), ("elen", V (W g.El)), ("el", g.el), ("blen", V (W g.Bl)), ("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p14 (g : PM) : List (String × ValueHOL 64) :=
  [("cost", g.cost), ("head", g.head), ("hlen", V (W g.hl)), ("exp_start", V (W (96 + g.Bl))), ("mlen", V (W g.M)), ("ml", g.ml), ("elen", V (W g.El)), ("el", g.el), ("blen", V (W g.Bl)), ("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p15 (g : PM) : List (String × ValueHOL 64) :=
  [("out", V g.out), ("cost", g.cost), ("head", g.head), ("hlen", V (W g.hl)), ("exp_start", V (W (96 + g.Bl))), ("mlen", V (W g.M)), ("ml", g.ml), ("elen", V (W g.El)), ("el", g.el), ("blen", V (W g.Bl)), ("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p16 (g : PM) : List (String × ValueHOL 64) :=
  [("mark", V g.mkt), ("out", V g.out), ("cost", g.cost), ("head", g.head), ("hlen", V (W g.hl)), ("exp_start", V (W (96 + g.Bl))), ("mlen", V (W g.M)), ("ml", g.ml), ("elen", V (W g.El)), ("el", g.el), ("blen", V (W g.Bl)), ("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p17 (g : PM) : List (String × ValueHOL 64) :=
  [("bp", V g.bp), ("mark", V g.mkt), ("out", V g.out), ("cost", g.cost), ("head", g.head), ("hlen", V (W g.hl)), ("exp_start", V (W (96 + g.Bl))), ("mlen", V (W g.M)), ("ml", g.ml), ("elen", V (W g.El)), ("el", g.el), ("blen", V (W g.Bl)), ("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p18 (g : PM) : List (String × ValueHOL 64) :=
  [("ep", V g.ep), ("bp", V g.bp), ("mark", V g.mkt), ("out", V g.out), ("cost", g.cost), ("head", g.head), ("hlen", V (W g.hl)), ("exp_start", V (W (96 + g.Bl))), ("mlen", V (W g.M)), ("ml", g.ml), ("elen", V (W g.El)), ("el", g.el), ("blen", V (W g.Bl)), ("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

def p19 (g : PM) : List (String × ValueHOL 64) :=
  [("mp", V g.mp), ("ep", V g.ep), ("bp", V g.bp), ("mark", V g.mkt), ("out", V g.out), ("cost", g.cost), ("head", g.head), ("hlen", V (W g.hl)), ("exp_start", V (W (96 + g.Bl))), ("mlen", V (W g.M)), ("ml", g.ml), ("elen", V (W g.El)), ("el", g.el), ("blen", V (W g.Bl)), ("bl", g.bl), ("hdr", V g.hdr), ("n", g.n), ("data", g.data), ("msg", g.msg)]

/-- Block lists and high-water marks (`out` first, then `bp`, `ep`, `mp`). -/
def qs15 (g : PM) : List (Nat × Nat) := [(g.out.toNat, g.M + 8)]
def qs17 (g : PM) : List (Nat × Nat) := (g.bp.toNat, g.Bl + 8) :: qs15 g
def qs18 (g : PM) : List (Nat × Nat) := (g.ep.toNat, g.El + 8) :: qs17 g
def qs19 (g : PM) : List (Nat × Nat) := (g.mp.toNat, g.M + 8) :: qs18 g

def Q15 (g : PM) : Nat := g.out.toNat + (g.M + 8)
def Q17 (g : PM) : Nat := g.bp.toNat + (g.Bl + 8)
def Q18 (g : PM) : Nat := g.ep.toNat + (g.El + 8)
def Q19 (g : PM) : Nat := g.mp.toNat + (g.M + 8)

def sg1 : Sig := ⟨[.any], [], [], false⟩
def sg4 : Sig := ⟨[.any, .any, .any, .any], [], [], false⟩

/-- The callee summaries and the activation facts of `pre_modexp`. -/
structure CP (σ : Type) (X : Ctx 64) (a : Act σ) : Prop where
  ha : ActOK a X
  hgrow : a.sg.grows = false
  hL0 : Layout a.C a.p0 a.Γ0
  hcaps : a.caps = capE
  hty : ∀ t, a.C.ty t = Types.guestC.ty t
  htyb : ∀ t, a.Cb.ty t = Types.guestC.ty t
  hgt : a.C.GT.lookup (nm "pre_hdr_buf") = some (.ptr tB96)
  br : SumSpecA σ X a.Cb a.H (nm "buffer_read") sgBR (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  ufb : SumSpecA σ X a.Cb a.H (nm "u256_from_be") sgAA (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  sw : SumSpecA σ X a.Cb a.H (nm "sat_word") sg1 (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  mg : SumSpecA σ X a.Cb a.H (nm "modexp_gas") sg4 (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  mn : SumSpecA σ X a.Cb a.H (nm "min") sgAA (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  mnF : FunSpec σ X (nm "min") (fun vs s r t => Good (some r) → ∀ v, r = .returned v →
      ∀ A B : BitVec 64, vs = [V A, V B] → ∃ w, v = V w ∧ w.toNat = min A.toNat B.toNat)
  mxp : SumSpecA σ X a.Cb a.H (nm "modexp") mxSig MxPre (fun _ _ _ _ => False)
    (fun _ _ _ _ _ _ => True)
  hAl : AllocSpec σ X (nm "alloc") .heap
  hAc : Summ σ X a.Cb a.H (nm "alloc") allocSig
  hRel : ReleaseSpec σ X (nm "heap_release") gHeap
  hMk : MarkSpec' σ X (nm "heap_mark") gHeap

/-! ## Argument lemmas -/

section args
variable {C : Cfg} {Γ : Gam} {p : Ptrs}

theorem argsOK_br {A B off : ValueHOL 64} {len d : BitVec 64}
    (h : BufOK C Γ p d.toNat (1 * len.toNat + 0)) :
    ArgsOK C Γ p sgBR.params [A, B, off, V len, V d] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | _ | _ | i <;> simp [sgBR] at hpt hw <;> subst hpt <;> subst hw
  · trivial
  · trivial
  · trivial
  · trivial
  · exact ⟨d, len, rfl, rfl, h⟩

theorem argCells_br {A B off : ValueHOL 64} {len d x : BitVec 64}
    (h : ArgCells sgBR.params [A, B, off, V len, V d] x) : Overlap d.toNat (1 * len.toNat + 0) x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, -⟩ | ⟨j, c, d', z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | _ | _ | i <;> simp [sgBR] at hn
  · rcases i with _ | _ | _ | _ | _ | i <;> simp [sgBR] at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf, V] at hw hz
    subst hw; subst hz
    exact ho

theorem argsOK_mx {a0 a1 a2 a3 a4 a5 a6 : BitVec 64}
    (h : BufOK C Γ p a6.toNat (1 * a5.toNat + 0)) :
    ArgsOK C Γ p mxSig.params [V a0, V a1, V a2, V a3, V a4, V a5, V a6] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | _ | _ | _ | _ | i <;> simp [mxSig] at hpt hw <;> subst hpt <;> subst hw
  · trivial
  · trivial
  · trivial
  · trivial
  · trivial
  · trivial
  · exact ⟨a6, a5, rfl, rfl, h⟩

theorem argCells_mx {a0 a1 a2 a3 a4 a5 a6 x : BitVec 64}
    (h : ArgCells mxSig.params [V a0, V a1, V a2, V a3, V a4, V a5, V a6] x) :
    Overlap a6.toNat (1 * a5.toNat + 0) x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, -⟩ | ⟨j, c, d', z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | _ | _ | _ | _ | i <;> simp [mxSig] at hn
  · rcases i with _ | _ | _ | _ | _ | _ | _ | i <;> simp [mxSig] at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf, V] at hw hz
    subst hw; subst hz
    exact ho

end args

theorem ev_glob {s : State σ} {g : MlS} {w : BitVec 64} (h : gword s g = some w) :
    ev s (.var .global g) = some (V w) := by
  unfold gword at h
  show s.globals.lookup g = _
  split at h
  · rename_i w' hw
    simp only [Option.some.injEq] at h
    subst h
    rw [hw]
  · simp at h

/-- The EV scalar cell `ev[15]` is writable. -/
theorem scell_ev {a : Act σ} (ha : ActOK a X) (hcaps : a.caps = capE)
    (hty : ∀ t, a.C.ty t = Types.guestC.ty t) (htyb : ∀ t, a.Cb.ty t = Types.guestC.ty t)
    {Γ : Gam} {p : Ptrs} {s : State σ} (hh : Heap a Γ p s) {k : Nat} (hk : k = 15) :
    ∃ E : BitVec 64, gword s (nm "ev") = some E ∧ SCell a.Cb Γ (E + BitVec.ofNat 64 (8 * k)) := by
  have hreq := req_now ha hh
  rw [hcaps] at hreq
  obtain ⟨e, he, het, hge⟩ := hreq ⟨nm "ev", 0, [], false⟩ (by simp [capE])
    (by decide)
  have het' : e.ty = 0 := het
  refine ⟨e.base, hge, e, he, k, ?_, ?_, rfl⟩
  · obtain ⟨p1, hp1, hord, hL, -⟩ := id hh.1
    have hm := (hL.1 e he).2.2.2.1
    rw [het', hty, ev_minSz] at hm
    unfold Obj.HasSlot
    omega
  · rw [het', htyb]
    subst hk
    exact ev_scalar 15 (by simp)


/-- Eon: the EV `bnd` cell `ev[16]` (`EV_OUTPUT_N`). -/
theorem bcell_ev {a : Act σ} (ha : ActOK a X) (hcaps : a.caps = capE)
    (hty : ∀ t, a.C.ty t = Types.guestC.ty t) (htyb : ∀ t, a.Cb.ty t = Types.guestC.ty t)
    {Γ : Gam} {p : Ptrs} {s : State σ} (hh : Heap a Γ p s) :
    ∃ E : BitVec 64, gword s (nm "ev") = some E ∧ BCell a.Cb Γ (E + BitVec.ofNat 64 128) := by
  have hreq := req_now ha hh
  rw [hcaps] at hreq
  obtain ⟨e, he, het, hge⟩ := hreq ⟨nm "ev", 0, [], false⟩ (by simp [capE])
    (by decide)
  have het' : e.ty = 0 := het
  refine ⟨e.base, hge, e, he, 16, ?_, ?_, rfl⟩
  · obtain ⟨p1, hp1, hord, hL, -⟩ := id hh.1
    have hm := (hL.1 e he).2.2.2.1
    rw [het', hty, ev_minSz] at hm
    unfold Obj.HasSlot
    omega
  · rw [het', htyb]
    exact Types.ev_bnd

/-- The cells of a prefix of the `pre_hdr_buf` object are `scalar` cells. -/
theorem scells_hdr {a : Act σ} (hL0 : Layout a.C a.p0 a.Γ0)
    (hty : ∀ t, a.C.ty t = Types.guestC.ty t) (htyb : ∀ t, a.Cb.ty t = Types.guestC.ty t)
    {Γ : Gam} (he : Ext a.Γ0 Γ) {hdr : BitVec 64}
    (hd : ∃ o0 ∈ a.Γ0, o0.base = hdr ∧ o0.ty = tB96) {n : Nat} (hn : n ≤ 96) :
    ∀ x, Overlap hdr.toNat n x → SCell a.Cb Γ x := by
  obtain ⟨o0, ho0, hb, ht⟩ := hd
  obtain ⟨o', ho', hb', ht', hs'⟩ := he o0 ho0
  have hm := (hL0.1 o0 ho0).2.2.2.1
  rw [ht, hty, ty_B96] at hm
  have hm96 : b96Ty.minSz = 96 := rfl
  have h8 := (hL0.1 o0 ho0).1
  unfold Obj.lo at h8
  rw [hb] at h8
  intro x hx
  obtain ⟨hx8, hx1, hx2⟩ := hx
  have hxlo : hdr.toNat ≤ x.toNat := by omega
  refine ⟨o', ho', (x.toNat - hdr.toNat) / 8, ?_, ?_, ?_⟩
  · unfold Obj.HasSlot
    omega
  · rw [htyb, ht', ht, ty_B96]
    simp [TyD.slot, b96Ty]
  · apply BitVec.eq_of_toNat_eq
    unfold Obj.cell
    rw [hb', hb, BitVec.toNat_add, BitVec.toNat_ofNat]
    have := x.isLt
    have : (8 * ((x.toNat - hdr.toNat) / 8)) % 2 ^ 64 = 8 * ((x.toNat - hdr.toNat) / 8) :=
      Nat.mod_eq_of_lt (by omega)
    rw [this]
    omega

theorem bufOK_hdr {a : Act σ} (hL0 : Layout a.C a.p0 a.Γ0)
    (hty : ∀ t, a.C.ty t = Types.guestC.ty t) (htyb : ∀ t, a.Cb.ty t = Types.guestC.ty t)
    {Γ : Gam} {p : Ptrs} (he : Ext a.Γ0 Γ) {hdr : BitVec 64}
    (hd : ∃ o0 ∈ a.Γ0, o0.base = hdr ∧ o0.ty = tB96) {n : Nat} (hn : n ≤ 96) :
    BufOK a.Cb Γ p hdr.toNat n :=
  fun x hx => Or.inl (scells_hdr hL0 hty htyb he hd hn x hx)

/-- `seq` of a statement with `SPK` post and a continuation that always ends abnormally. -/
theorem hoareG_seqKR {a : Act σ} {P : State σ → Prop} {K : Nat} {MK : BitVec 64}
    {L : LocalsH → Prop} {c k : ProgHOL 64} (hc : HoareG σ X P c (SPK a K MK L))
    (hk : HoareG σ X (PK a K MK L) k (RQ a)) : HoareG σ X P (.seq c k) (RQ a) :=
  hoareG_seq hc (fun r t _ hr _ h => ⟨hr, h.2⟩)
    (hoareG_pre hk fun _ _ h => ⟨(h.1 rfl).1, (h.1 rfl).2⟩)

theorem rq_locals {a : Act σ} (hH : HooksLawful a.C a.H) {r : Option (PanSemResultExact 64)}
    {t : State σ} (L : LocalsH) (h : RQ a r t) : RQ a r { t with locals := L } :=
  ⟨h.1, fun r' hr => let ⟨a1, a2, a3⟩ := h.2 r' hr
    ⟨a1, a2, fun hna => hha_congr (s := t) hH rfl rfl rfl rfl (a3 hna)⟩⟩

/-- `var x = alloc(e); k` for a continuation that always ends abnormally. -/
theorem hoareG_decAllocR {a : Act σ} (ha : ActOK a X)
    (hAl : AllocSpec σ X (nm "alloc") .heap) (hC : Summ σ X a.Cb a.H (nm "alloc") allocSig)
    {x : MlS} {e : ExpHOL 64} {k : ProgHOL 64} {K : Nat} {MK : BitVec 64}
    {L : LocalsH → Prop} {L' : BitVec 64 → LocalsH → Prop} (n : Nat) (hn0 : 0 < n) (hn : n < 2 ^ 32)
    (he : ∀ s : State σ, L s.locals → ev s e = some (.val (.word (BitVec.ofNat 64 n))))
    (hL' : ∀ (s st : State σ) (q : BitVec 64), L s.locals →
      L' q (setVarHOLFinite x (.val (.word q)) { st with locals := s.locals }).locals)
    (hk : ∀ q : BitVec 64, q.toNat % 8 = 0 → K ≤ q.toNat →
      HoareG σ X (PK a (q.toNat + n) MK (L' q)) k (RQ a)) :
    HoareG σ X (PK a K MK L) (.decCall x .one (nm "alloc") [e] k) (RQ a) := by
  have hn' : (BitVec.ofNat 64 n).toNat = n := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  refine hoareG_decCall (FunSpec.and (sumSpecA_of_sumSpec hC) hAl) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he', hh, hK, hw⟩ vs hvs callee v st ⟨hR, hR'⟩ _ hsh
    rw [evs_cons (he s hL) evs_nil] at hvs
    cases hvs
    have hA : ArgsOK a.Cb Γ p allocSig.params [.val (.word (BitVec.ofNat 64 n))] :=
      argsOK_any (by simp [allocSig]) (by simp [allocSig])
    obtain ⟨Γ', q', he'', hh', hmo, hnf, -⟩ := heap_callK (Pre := fun _ _ _ => True) ha hh hR
      (by simp [Good]) (by simp [Abortive]) hA trivial
      (fun y hy => absurd hy (argCells_any (by simp [allocSig]))) (by simp [allocSig])
      (by simp [allocSig])
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := hh.2.1
    obtain ⟨-, -, p', hp', hord', hm', hret⟩ := hR' (by simp [Good]) _ p rfl hpe (heap_ord hh)
    obtain ⟨q, rfl, hq8, hlive, hfree⟩ := hret v rfl
    have hpq : p' = q' := by rw [hh'.2.1] at hp'; exact (Option.some.inj hp').symm
    subst hpq
    rw [hn'] at hlive hfree
    simp only [Region.Live] at hlive
    have hq1 : p.hp ≤ q.toNat := by
      by_contra hcon
      exact hfree q.toNat le_rfl (by omega) (Or.inl ⟨hlive.1, by omega⟩)
    refine hoareG_conseq (hk q hq8 (Nat.le_trans hK hq1))
      (fun t _ ht => ?_) (fun r t _ _ hq => rq_locals ha.hH _ hq)
    subst ht
    rw [hn'] at *
    exact ⟨hL' s st q hL, Γ', p', ext_trans he' he'',
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', hlive.2, winK_after ha hh' hmo hnf hw⟩
  · intro s hs ⟨hL, Γ, p, he', hh, hK, hw⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    rw [evs_cons (he s hL) evs_nil] at hvs
    cases hvs
    have hA : ArgsOK a.Cb Γ p allocSig.params [.val (.word (BitVec.ofNat 64 n))] :=
      argsOK_any (by simp [allocSig]) (by simp [allocSig])
    refine ⟨by simp, fun r' hr' => ?_⟩
    cases hr'
    refine ⟨(WaveHelpers.abn_nb habn).1, (WaveHelpers.abn_nb habn).2, fun hna => ?_⟩
    obtain ⟨Γ', q', he'', hh', -⟩ := heap_callK (Pre := fun _ _ _ => True) ha hh hR
      (abn_good' habn) hna hA trivial
      (fun y hy => absurd hy (argCells_any (by simp [allocSig]))) (by simp [allocSig])
      (by simp [allocSig])
    exact ⟨Γ', q', ext_trans he' he'', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-! ## The end: stores, release, return -/

theorem stEndP {a : Act σ} (cp : CP σ X a) (g : PM) (hM : g.M ≤ 1024) :
    HoareG σ X (PK a (Q19 g) g.mkt (fun m => LP (p19 g) m)) pmEnd (HQa a) := by
  unfold pmEnd
  have hst : ∀ (k : Nat) (hk : k = 15) (L : LocalsH → Prop) (v : ExpHOL 64),
      (∀ s : State σ, L s.locals → ∀ v', ev s v = some v' → ∃ x, flattenHOL v' = [x]) →
      HoareG σ X (PreH a L) (.store (pmEv (8 * k)) v) (SPA a L) := by
    intro k hk L v hval
    refine hoareG_stwSP cp.ha ?_ hval
    intro s _ hL Γ p he hh w hw h8
    obtain ⟨E, hE, hsc⟩ := scell_ev cp.ha cp.hcaps cp.hty cp.htyb hh hk
    rw [pmEv, ev_add2 (ev_glob hE) (ev_cw s (8 * k))] at hw
    cases hw
    exact hsc
  refine hoareG_seqSP (L := fun m => LP (p19 g) m) hqa_of_abn
    (hoareG_relK cp.ha cp.hRel (fun s h => LP.getE h (by simp [p19]))) ?_
  refine hoareG_seqSP (L := fun m => LP (p19 g) m) hqa_of_abn
    (hst 15 rfl (fun m => LP (p19 g) m) (lv (nm "out")) ?_) ?_
  · intro s hL v' hv'
    rw [LP.getE hL (x := "out") (v := V g.out) (by simp [p19])] at hv'
    cases hv'
    exact ⟨HolWordLab.word g.out, by simp [flattenHOL, V]⟩
  refine hoareG_seqSP (L := fun m => LP (p19 g) m) hqa_of_abn
    (hoareG_stwBSP (L := fun m => LP (p19 g) m) cp.ha (ea := pmEv (8 * 16)) (ev' := lv (nm "mlen"))
      (fun s _ hL Γ p he hh w hw h8 => by
        obtain ⟨E, hE, hbc⟩ := bcell_ev cp.ha cp.hcaps cp.hty cp.htyb hh
        rw [pmEv, ev_add2 (ev_glob hE) (ev_cw s (8 * 16))] at hw
        cases hw
        exact hbc) ?_) ?_
  · intro s hL v' hv'
    rw [LP.getE hL (x := "mlen") (v := V (W g.M)) (by simp [p19])] at hv'
    cases hv'
    exact ⟨W g.M, rfl, by rw [toNat_W (by omega)]; omega⟩
  exact hoareG_return fun t _ ⟨_, hH'⟩ v _ =>
    hqa_of_hha (t := emptyLocalsHOLFinite t) (hha_congr (s := t) cp.ha.hH rfl rfl rfl rfl hH') _

/-! ## The reads and the call -/

theorem stC {a : Act σ} (cp : CP σ X a) (g : PM) (hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024)
    (hbo : BO a (qs19 g) (Q19 g)) :
    HoareG σ X (PK a (Q19 g) g.mkt (fun m => LP (p19 g) m)) pmC (HQa a) := by
  obtain ⟨hBl, hEl, hM⟩ := hF
  have hW : ∀ k : Nat, k ≤ 2200 → (W k).toNat = k := fun k hk => toNat_W (by omega)
  unfold pmC pmBr
  refine hoareG_seqK (L := fun m => LP (p19 g) m)
    (hoareG_callK cp.ha cp.hgrow cp.br (by simp [sgBR]) rfl ?_) ?_
  · intro s _ hL Γ p he hh hK vs hvs
    have e1 : ev s (lv (nm "data")) = some g.data := LP.getE hL (by simp [p19])
    have e2 : ev s (lv (nm "n")) = some g.n := LP.getE hL (by simp [p19])
    have e3 : ev s (cw 96) = some (V (W 96)) := ev_cw s 96
    have e4 : ev s (lv (nm "blen")) = some (V (W g.Bl)) := LP.getE hL (by simp [p19])
    have e5 : ev s (lv (nm "bp")) = some (V g.bp) := LP.getE hL (by simp [p19])
    rw [evs_cons e1 (evs_cons e2 (evs_cons e3 (evs_cons e4 (evs_cons e5 evs_nil))))] at hvs
    cases hvs
    obtain ⟨hb1, hb2⟩ := blk_of_bo cp.hgrow cp.ha.hord0 cp.hL0 hh hbo hK
      (b := g.bp.toNat) (n := g.Bl + 8) (m := 1 * (W g.Bl).toNat + 0)
      (by simp [qs19, qs18, qs17]) (by rw [hW _ (by omega)]; omega) a.Cb
    exact ⟨argsOK_br hb1, fun x hx => hb2 x (argCells_br hx), fun _ => trivial⟩
  refine hoareG_seqK (L := fun m => LP (p19 g) m)
    (hoareG_callK cp.ha cp.hgrow cp.br (by simp [sgBR]) rfl ?_) ?_
  · intro s _ hL Γ p he hh hK vs hvs
    have e1 : ev s (lv (nm "data")) = some g.data := LP.getE hL (by simp [p19])
    have e2 : ev s (lv (nm "n")) = some g.n := LP.getE hL (by simp [p19])
    have e3 : ev s (lv (nm "exp_start")) = some (V (W (96 + g.Bl))) := LP.getE hL (by simp [p19])
    have e4 : ev s (lv (nm "elen")) = some (V (W g.El)) := LP.getE hL (by simp [p19])
    have e5 : ev s (lv (nm "ep")) = some (V g.ep) := LP.getE hL (by simp [p19])
    rw [evs_cons e1 (evs_cons e2 (evs_cons e3 (evs_cons e4 (evs_cons e5 evs_nil))))] at hvs
    cases hvs
    obtain ⟨hb1, hb2⟩ := blk_of_bo cp.hgrow cp.ha.hord0 cp.hL0 hh hbo hK
      (b := g.ep.toNat) (n := g.El + 8) (m := 1 * (W g.El).toNat + 0)
      (by simp [qs19, qs18]) (by rw [hW _ (by omega)]; omega) a.Cb
    exact ⟨argsOK_br hb1, fun x hx => hb2 x (argCells_br hx), fun _ => trivial⟩
  refine hoareG_seqK (L := fun m => LP (p19 g) m)
    (hoareG_callK cp.ha cp.hgrow cp.br (by simp [sgBR]) rfl ?_) ?_
  · intro s _ hL Γ p he hh hK vs hvs
    have e1 : ev s (lv (nm "data")) = some g.data := LP.getE hL (by simp [p19])
    have e2 : ev s (lv (nm "n")) = some g.n := LP.getE hL (by simp [p19])
    have e3 : ev s (.op .add [lv (nm "exp_start"), lv (nm "elen")]) =
        some (V (W (96 + g.Bl + g.El))) :=
      ev_addW (LP.getE hL (by simp [p19])) (LP.getE hL (by simp [p19]))
    have e4 : ev s (lv (nm "mlen")) = some (V (W g.M)) := LP.getE hL (by simp [p19])
    have e5 : ev s (lv (nm "mp")) = some (V g.mp) := LP.getE hL (by simp [p19])
    rw [evs_cons e1 (evs_cons e2 (evs_cons e3 (evs_cons e4 (evs_cons e5 evs_nil))))] at hvs
    cases hvs
    obtain ⟨hb1, hb2⟩ := blk_of_bo cp.hgrow cp.ha.hord0 cp.hL0 hh hbo hK
      (b := g.mp.toNat) (n := g.M + 8) (m := 1 * (W g.M).toNat + 0)
      (by simp [qs19]) (by rw [hW _ (by omega)]; omega) a.Cb
    exact ⟨argsOK_br hb1, fun x hx => hb2 x (argCells_br hx), fun _ => trivial⟩
  refine hoareG_seqK (L := fun m => LP (p19 g) m)
    (hoareG_callK cp.ha cp.hgrow cp.mxp (by simp [mxSig]) rfl ?_) (stEndP cp g hM)
  intro s _ hL Γ p he hh hK vs hvs
  have e1 : ev s (lv (nm "bp")) = some (V g.bp) := LP.getE hL (by simp [p19])
  have e2 : ev s (lv (nm "blen")) = some (V (W g.Bl)) := LP.getE hL (by simp [p19])
  have e3 : ev s (lv (nm "ep")) = some (V g.ep) := LP.getE hL (by simp [p19])
  have e4 : ev s (lv (nm "elen")) = some (V (W g.El)) := LP.getE hL (by simp [p19])
  have e5 : ev s (lv (nm "mp")) = some (V g.mp) := LP.getE hL (by simp [p19])
  have e6 : ev s (lv (nm "mlen")) = some (V (W g.M)) := LP.getE hL (by simp [p19])
  have e7 : ev s (lv (nm "out")) = some (V g.out) := LP.getE hL (by simp [p19])
  rw [evs_cons e1 (evs_cons e2 (evs_cons e3 (evs_cons e4 (evs_cons e5 (evs_cons e6
    (evs_cons e7 evs_nil))))))] at hvs
  cases hvs
  obtain ⟨hb1, hb2⟩ := blk_of_bo cp.hgrow cp.ha.hord0 cp.hL0 hh hbo hK
    (b := g.out.toNat) (n := g.M + 8) (m := 1 * (W g.M).toNat + 0)
    (by simp [qs19, qs18, qs17, qs15]) (by rw [hW _ (by omega)]; omega) a.Cb
  refine ⟨argsOK_mx hb1, fun x hx => hb2 x (argCells_mx hx), fun s' => ?_⟩
  intro BL ML h1 h3
  simp [argW, wordOf, V] at h1 h3
  subst h1; subst h3
  rw [hW _ (by omega), hW _ (by omega)]
  exact ⟨hBl, hM⟩

/-! ## The allocations -/

theorem side_ofP {l l0 : List (String × ValueHOL 64)} (hn : l.map Prod.fst = l0.map Prod.fst)
    {x : String} (h : ∀ y ∈ l0.map Prod.fst, nm y ≠ nm x) : ∀ p ∈ l, nm p.1 ≠ nm x :=
  fun p hp => h p.1 (hn ▸ List.mem_map_of_mem hp)

theorem stAmp {a : Act σ} (cp : CP σ X a) (g : PM)
    (hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024) (hbo : BO a (qs18 g) (Q18 g)) :
    HoareG σ X (PK a (Q18 g) g.mkt (fun m => LP (p18 g) m)) pmA3 (HQa a) := by
  obtain ⟨hBl, hEl, hM⟩ := hF
  unfold pmA3
  refine hoareG_decAllocK cp.ha cp.hAl cp.hAc (g.M + 8) (by omega) (by omega)
    (L' := fun q m => LP (p19 {g with mp := q}) m) ?_ ?_ ?_
  · intro s hL
    exact ev_addW (LP.getE hL (by simp [p18])) (ev_cw s 8)
  · intro s st q hL
    exact LP.dec hL "mp" _ (side_ofP (l := p18 g) (l0 := p18 g1) (x := "mp") rfl (by decide))
  · intro q hq8 hKq
    have hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024 := ⟨hBl, hEl, hM⟩
    exact stC cp {g with mp := q} hF (bo_cons hbo hq8 hKq)

theorem stAep {a : Act σ} (cp : CP σ X a) (g : PM)
    (hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024) (hbo : BO a (qs17 g) (Q17 g)) :
    HoareG σ X (PK a (Q17 g) g.mkt (fun m => LP (p17 g) m)) pmA2 (HQa a) := by
  obtain ⟨hBl, hEl, hM⟩ := hF
  unfold pmA2
  refine hoareG_decAllocK cp.ha cp.hAl cp.hAc (g.El + 8) (by omega) (by omega)
    (L' := fun q m => LP (p18 {g with ep := q}) m) ?_ ?_ ?_
  · intro s hL
    exact ev_addW (LP.getE hL (by simp [p17])) (ev_cw s 8)
  · intro s st q hL
    exact LP.dec hL "ep" _ (side_ofP (l := p17 g) (l0 := p17 g1) (x := "ep") rfl (by decide))
  · intro q hq8 hKq
    have hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024 := ⟨hBl, hEl, hM⟩
    exact stAmp cp {g with ep := q} hF (bo_cons hbo hq8 hKq)

theorem stAbp {a : Act σ} (cp : CP σ X a) (g : PM)
    (hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024) (hbo : BO a (qs15 g) (g.mkt.toNat)) :
    HoareG σ X (PK a (g.mkt.toNat) g.mkt (fun m => LP (p16 g) m)) pmA1 (HQa a) := by
  obtain ⟨hBl, hEl, hM⟩ := hF
  unfold pmA1
  refine hoareG_decAllocK cp.ha cp.hAl cp.hAc (g.Bl + 8) (by omega) (by omega)
    (L' := fun q m => LP (p17 {g with bp := q}) m) ?_ ?_ ?_
  · intro s hL
    exact ev_addW (LP.getE hL (by simp [p16])) (ev_cw s 8)
  · intro s st q hL
    exact LP.dec hL "bp" _ (side_ofP (l := p16 g) (l0 := p16 g1) (x := "bp") rfl (by decide))
  · intro q hq8 hKq
    have hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024 := ⟨hBl, hEl, hM⟩
    exact stAep cp {g with bp := q} hF (bo_cons hbo hq8 hKq)

theorem stMk {a : Act σ} (cp : CP σ X a) (g : PM) (MK : BitVec 64)
    (hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024) (hbo : BO a (qs15 g) (Q15 g)) :
    HoareG σ X (PK a (Q15 g) MK (fun m => LP (p15 g) m)) pmMk (HQa a) := by
  unfold pmMk
  refine hoareG_markK cp.ha cp.hMk (L' := fun w m => LP (p16 {g with mkt := w}) m) ?_ ?_
  · intro s st w hL
    exact LP.dec hL "mark" _ (side_ofP (l := p15 g) (l0 := p15 g1) (x := "mark") rfl (by decide))
  · intro w hKw
    exact stAbp cp {g with mkt := w} hF (bo_mono hbo hKw)

theorem stOut {a : Act σ} (cp : CP σ X a) (g : PM) (MK : BitVec 64)
    (hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p14 g) m)) pmOut (HQa a) := by
  obtain ⟨hBl, hEl, hM⟩ := hF
  unfold pmOut
  refine hoareG_decAllocK cp.ha cp.hAl cp.hAc (g.M + 8) (by omega) (by omega)
    (L' := fun q m => LP (p15 {g with out := q}) m) ?_ ?_ ?_
  · intro s hL
    exact ev_addW (LP.getE hL (by simp [p14])) (ev_cw s 8)
  · intro s st q hL
    exact LP.dec hL "out" _ (side_ofP (l := p14 g) (l0 := p14 g1) (x := "out") rfl (by decide))
  · intro q hq8 hKq
    have hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024 := ⟨hBl, hEl, hM⟩
    exact stMk cp {g with out := q} MK hF (bo_cons (bo_nil le_rfl) hq8 hKq)

theorem haddr_ev {a : Act σ} (cp : CP σ X a) {k : Nat} (hk : k = 15) {Γ : Gam} {p : Ptrs}
    {s : State σ} (hh : Heap a Γ p s) {w : BitVec 64} (hw : ev s (pmEv (8 * k)) = some (V w)) :
    SCell a.Cb Γ w := by
  obtain ⟨E, hE, hsc⟩ := scell_ev cp.ha cp.hcaps cp.hty cp.htyb hh hk
  rw [pmEv, ev_add2 (ev_glob hE) (ev_cw s (8 * k))] at hw
  cases hw
  exact hsc

theorem haddrB_ev {a : Act σ} (cp : CP σ X a) {Γ : Gam} {p : Ptrs}
    {s : State σ} (hh : Heap a Γ p s) {w : BitVec 64} (hw : ev s (pmEv 128) = some (V w)) :
    BCell a.Cb Γ w := by
  obtain ⟨E, hE, hbc⟩ := bcell_ev cp.ha cp.hcaps cp.hty cp.htyb hh
  rw [pmEv, ev_add2 (ev_glob hE) (ev_cw s 128)] at hw
  cases hw
  exact hbc


theorem stRest {a : Act σ} (cp : CP σ X a) (g : PM) (MK : BitVec 64)
    (hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p14 g) m)) (.seq pmEmpty pmOut) (HQa a) := by
  unfold pmEmpty
  refine hoareG_seqK (L := fun m => LP (p14 g) m) (hoareG_iteK ?_ ?_) (stOut cp g MK hF)
  · refine hoareG_pre (hoareG_conseq ?_ (fun _ _ h => h) (fun r t _ _ h => rq_spk h))
      (fun s _ h => h.1)
    unfold pmEmptyBr
    refine hoareG_decAllocR cp.ha cp.hAl cp.hAc 8 (by omega) (by omega)
      (L' := fun q m => LP (("empty", V q) :: p14 g) m) (fun s hL => ev_cw s 8) ?_ ?_
    · intro s st q hL
      exact LP.dec hL "empty" _ (side_ofP (l := p14 g) (l0 := p14 g1) (x := "empty") rfl (by decide))
    · intro q hq8 hKq
      refine hoareG_seqKR (hoareG_stwKS cp.ha ?_ ?_) (hoareG_seqKR (hoareG_stwBKS cp.ha ?_ ?_)
        (hoareG_retRQ cp.ha.hH))
      · intro s _ hL Γ p he hh w hw h8
        exact haddr_ev cp (k := 15) rfl hh hw
      · intro s hL v' hv'
        rw [LP.getE hL (x := "empty") (v := V q) (by simp)] at hv'
        cases hv'
        exact ⟨HolWordLab.word q, by simp [flattenHOL, V]⟩
      · intro s _ hL Γ p he hh w hw h8
        exact haddrB_ev cp hh hw
      · intro s hL v' hv'
        rw [ev_cw] at hv'
        cases hv'
        exact ⟨BitVec.ofNat 64 0, rfl, by decide⟩
  · exact hoareG_pre (hoareG_skip fun s _ h => ⟨fun _ => h, fun r' h => absurd h (by simp)⟩)
      (fun s _ h => h.1)

/-- The wrapper of the prefix stages: the callee tables, the post-generalization, and the
`charge_gas` continuation (supplied from outside because it rebases the activation). -/
structure CPW (σ : Type) (X : Ctx 64) (a : Act σ) (Wq : State σ → Prop) : Prop where
  cp : CP σ X a
  hw : WOK a Wq
  chg : ∀ (g : PM) (MK : BitVec 64), g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024 →
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p14 g) m)) pmCharge (QW Wq)

variable {Wq : State σ → Prop}

theorem stCost {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64)
    (hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p13 g) m)) pmCost (QW Wq) := by
  unfold pmCost
  refine hoareG_decCallVW cx.hw cx.cp.ha cx.cp.mg (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (by simp [sg4]) rfl
    (Fct := fun _ => True) (L' := fun v m => LP (("cost", v) :: p13 g) m) ?_ ?_ ?_ ?_
  · intro s _ hL Γ p he hh hK vs hvs
    have e1 : ev s (lv (nm "blen")) = some (V (W g.Bl)) := LP.getE hL (by simp [p13])
    have e2 : ev s (lv (nm "mlen")) = some (V (W g.M)) := LP.getE hL (by simp [p13])
    have e3 : ev s (lv (nm "elen")) = some (V (W g.El)) := LP.getE hL (by simp [p13])
    have e4 : ev s (lv (nm "head")) = some g.head := LP.getE hL (by simp [p13])
    rw [evs_cons e1 (evs_cons e2 (evs_cons e3 (evs_cons e4 evs_nil)))] at hvs
    cases hvs
    exact ⟨argsOK_any (by simp [sg4]) rfl, fun x hx => absurd hx (argCells_any (by simp [sg4])),
      fun _ => trivial⟩
  · intro s _ vs _ callee v st _ _
    trivial
  · intro s st v hL
    exact LP.dec hL "cost" v (side_ofP (l := p13 g) (l0 := p13 g1) (x := "cost") rfl (by decide))
  · intro v _
    exact cx.chg {g with cost := v} MK hF

theorem stHead {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64)
    (hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p12 g) m)) pmHead (QW Wq) := by
  unfold pmHead
  refine hoareG_decCallVW cx.hw cx.cp.ha cx.cp.ufb (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (by simp [sgAA]) rfl
    (Fct := fun _ => True) (L' := fun v m => LP (("head", v) :: p12 g) m) ?_ ?_ ?_ ?_
  · intro s _ hL Γ p he hh hK vs hvs
    have e1 : ev s (lv (nm "hdr")) = some (V g.hdr) := LP.getE hL (by simp [p12])
    have e2 : ev s (lv (nm "hlen")) = some (V (W g.hl)) := LP.getE hL (by simp [p12])
    rw [evs_cons e1 (evs_cons e2 evs_nil)] at hvs
    cases hvs
    exact ⟨argsOK_any (by simp [sgAA]) rfl, fun x hx => absurd hx (argCells_any (by simp [sgAA])),
      fun _ => trivial⟩
  · intro s _ vs _ callee v st _ _
    trivial
  · intro s st v hL
    exact LP.dec hL "head" v (side_ofP (l := p12 g) (l0 := p12 g1) (x := "head") rfl (by decide))
  · intro v _
    exact stCost cx {g with head := v} MK hF

theorem stHlen {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64)
    (hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024)
    (hd : ∃ o0 ∈ a.Γ0, o0.base = g.hdr ∧ o0.ty = tB96) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p11 g) m)) pmHlen (QW Wq) := by
  obtain ⟨hBl, hEl, hM⟩ := hF
  unfold pmHlen
  refine hoareG_decCallVW cx.hw cx.cp.ha cx.cp.mn cx.cp.mnF (by simp [sgAA]) rfl
    (Fct := fun v => ∃ hl, hl ≤ 32 ∧ v = V (W hl))
    (L' := fun v m => LP (("hlen", v) :: p11 g) m) ?_ ?_ ?_ ?_
  · intro s _ hL Γ p he hh hK vs hvs
    have e1 : ev s (cw 32) = some (V (W 32)) := ev_cw s 32
    have e2 : ev s (lv (nm "elen")) = some (V (W g.El)) := LP.getE hL (by simp [p11])
    rw [evs_cons e1 (evs_cons e2 evs_nil)] at hvs
    cases hvs
    exact ⟨argsOK_any (by simp [sgAA]) rfl, fun x hx => absurd hx (argCells_any (by simp [sgAA])),
      fun _ => trivial⟩
  · intro s hL vs hvs callee v st hR' hsh
    have e1 : ev s (cw 32) = some (V (W 32)) := ev_cw s 32
    have e2 : ev s (lv (nm "elen")) = some (V (W g.El)) := LP.getE hL (by simp [p11])
    rw [evs_cons e1 (evs_cons e2 evs_nil)] at hvs
    cases hvs
    obtain ⟨w, hv, hw⟩ := hR' (by simp [Good]) v rfl _ _ rfl
    have h32 : (W 32).toNat = 32 := toNat_W (by omega)
    have hEl' : (W g.El).toNat = g.El := toNat_W (by omega)
    rw [h32, hEl'] at hw
    exact ⟨w.toNat, by omega, by rw [hv, W_toNat]⟩
  · intro s st v hL
    exact LP.dec hL "hlen" v (side_ofP (l := p11 g) (l0 := p11 g1) (x := "hlen") rfl (by decide))
  · intro v ⟨hl, hle, hv⟩
    subst hv
    refine hoareG_seqKW cx.hw (L := fun m => LP (p12 {g with hl := hl}) m)
      (hoareG_callK cx.cp.ha cx.cp.hgrow cx.cp.br (by simp [sgBR]) rfl ?_) (stHead cx {g with hl := hl} MK ⟨hBl, hEl, hM⟩)
    intro s _ hL Γ p he hh hK vs hvs
    have e1 : ev s (lv (nm "data")) = some g.data := LP.getE hL (by simp [p11])
    have e2 : ev s (lv (nm "n")) = some g.n := LP.getE hL (by simp [p11])
    have e3 : ev s (lv (nm "exp_start")) = some (V (W (96 + g.Bl))) := LP.getE hL (by simp [p11])
    have e4 : ev s (lv (nm "hlen")) = some (V (W hl)) := LP.getE hL (by simp [p11])
    have e5 : ev s (lv (nm "hdr")) = some (V g.hdr) := LP.getE hL (by simp [p11])
    rw [evs_cons e1 (evs_cons e2 (evs_cons e3 (evs_cons e4 (evs_cons e5 evs_nil))))] at hvs
    cases hvs
    have hW : (W hl).toNat = hl := toNat_W (by omega)
    have hs := scells_hdr cx.cp.hL0 cx.cp.hty cx.cp.htyb he hd (n := 1 * (W hl).toNat + 0) (by rw [hW]; omega)
    exact ⟨argsOK_br (fun x hx => Or.inl (hs x hx)),
      fun x hx => foot_of_scell cx.cp.ha hh (hs x (argCells_br hx)), fun _ => trivial⟩

theorem stExp {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64)
    (hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024)
    (hd : ∃ o0 ∈ a.Γ0, o0.base = g.hdr ∧ o0.ty = tB96) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p10 g) m)) pmExp (QW Wq) := by
  unfold pmExp
  refine hoareG_decKW cx.hw cx.cp.ha.hH (L' := fun m => LP (p11 g) m) ?_ ?_
  · intro s _ hL v hv
    rw [ev_addW (ev_cw s 96) (LP.getE hL (x := "blen") (v := V (W g.Bl)) (by simp [p10]))] at hv
    cases hv
    exact LP.dec hL "exp_start" _ (side_ofP (l := p10 g) (l0 := p10 g1) (x := "exp_start") rfl (by decide))
  · exact stHlen cx g MK hF hd

/-! ## The guards and the header -/

theorem guardK {a : Act σ} (hw : WOK a Wq) (hH : HooksLawful a.C a.H) {K : Nat} {MK : BitVec 64}
    {L : LocalsH → Prop} {x : String} {B : Nat} (hB : B < 2 ^ 64)
    (hL : ∀ s : State σ, L s.locals → ev s (lv (nm x)) = some (V (W B))) {k : ProgHOL 64}
    (hk : HoareG σ X (PK a K MK (fun m => L m ∧ B ≤ 1024)) k (QW Wq)) :
    HoareG σ X (PK a K MK L) (pmGuard x k) (QW Wq) := by
  unfold pmGuard
  refine hoareG_seqKW hw (L := fun m => L m ∧ B ≤ 1024) (hoareG_iteK ?_ ?_) hk
  · exact hoareG_pre (hoareG_conseq (hoareG_raiseRQ hH) (fun _ _ h => h) (fun r t _ _ h => rq_spk h))
      (fun s _ h => h.1)
  · refine hoareG_skip fun s _ ⟨⟨hLs, hK⟩, hw⟩ => ?_
    rw [ev_cmp (ev_cw s 1024) (hL s hLs)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
      Flapjack.Compiler.Encoders.Asm.wordCmpHOL, BitVec.lt_def] at hw
    have h1 : (BitVec.ofNat 64 1024).toNat = 1024 := toNat_W (by norm_num)
    have h2 : (W B).toNat = B := toNat_W hB
    have hB1 : B ≤ 1024 := by
      by_contra hcon
      rw [h1, h2] at hw
      simp [show 1024 < B by omega] at hw
    exact ⟨fun _ => ⟨⟨hLs, hB1⟩, hK⟩, fun r' h => absurd h (by simp)⟩

theorem sat_fct {v : ValueHOL 64} (hsh : shapeEqHOL (shapeOfHOLExact v) .one = true) :
    ∃ B, B < 2 ^ 64 ∧ v = V (W B) := by
  obtain ⟨w, hw⟩ := val_of_shapeEq_one' hsh
  exact ⟨w.toNat, w.isLt, by rw [hw, W_toNat]⟩

/-- Generic `var x = f(args); k` with `any` arguments and a free result (struct or word). -/
theorem stFree {a : Act σ} (cx : CPW σ X a Wq) {f : MlS} {sg' : Sig} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {x : String} {l : List (String × ValueHOL 64)}
    (hf : SumSpecA σ X a.Cb a.H f sg' (fun _ _ _ => True) (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True))
    (hps : ∀ pt ∈ sg'.params, pt = PT.any) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgrf : sg'.grows = false) {K : Nat} {MK : BitVec 64}
    (hlen : ∀ s : State σ, LP l s.locals → ∀ vs, evs s args = some vs → sg'.params.length = vs.length)
    (hx : ∀ p ∈ l, nm p.1 ≠ nm x)
    {R' : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf' : FunSpec σ X f R') {Fct : ValueHOL 64 → Prop} {fv : ValueHOL 64 → List (String × ValueHOL 64)}
    (hret : ∀ s : State σ, LP l s.locals → ∀ vs, evs s args = some vs → ∀ callee v (st : State σ),
      R' vs (callEntryStateHOLFinite s callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true → Fct v)
    (hfv : ∀ v, fv v = (x, v) :: l)
    (hk : ∀ v, Fct v → HoareG σ X (PK a K MK (fun m => LP (fv v) m)) k (QW Wq)) :
    HoareG σ X (PK a K MK (fun m => LP l m)) (.decCall (nm x) sh f args k) (QW Wq) := by
  refine hoareG_decCallVW cx.hw cx.cp.ha hf hf' hgw hgrf (Fct := Fct) (L' := fun v m => LP (fv v) m) ?_ hret ?_ hk
  · intro s _ hL Γ p he hh hK vs hvs
    exact ⟨argsOK_any hps (hlen s hL vs hvs), fun y hy => absurd hy (argCells_any hps),
      fun _ => trivial⟩
  · intro s st v hL
    rw [hfv]
    exact LP.dec hL x v hx

theorem evs_len' {s : State σ} : ∀ {es : List (ExpHOL 64)} {vs : List (ValueHOL 64)},
    evs s es = some vs → vs.length = es.length
  | [], vs, h => by
      have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
      rw [h0] at h
      cases h
      rfl
  | e :: es, vs, h => by
      obtain ⟨v, vs', rfl, he, hes⟩ := evs_cons_inv h
      simp [evs_len' hes]

/-! ## The binders after the header read -/

theorem stMlenG {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64)
    (hBl : g.Bl ≤ 1024) (hEl : g.El ≤ 1024) (hM64 : g.M < 2 ^ 64)
    (hd : ∃ o0 ∈ a.Γ0, o0.base = g.hdr ∧ o0.ty = tB96) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p10 g) m)) (pmGuard "mlen" pmExp) (QW Wq) :=
  guardK cx.hw cx.cp.ha.hH hM64 (fun s hL => LP.getE hL (by simp [p10]))
    (fun s hs ⟨⟨hL, hM1⟩, hK⟩ hg => stExp cx g MK ⟨hBl, hEl, hM1⟩ hd s hs ⟨hL, hK⟩ hg)

theorem stMlenB {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64)
    (hBl : g.Bl ≤ 1024) (hEl : g.El ≤ 1024) (hd : ∃ o0 ∈ a.Γ0, o0.base = g.hdr ∧ o0.ty = tB96) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p9 g) m)) pmMlen (QW Wq) := by
  unfold pmMlen
  refine stFree cx cx.cp.sw (fv := fun v => ("mlen", v) :: p9 g) (by simp [sg1]) (by simp [sg1]) rfl
    (fun s hL vs hvs => by rw [evs_len' hvs]; rfl) (side_ofP (l := p9 g) (l0 := p9 g1) (x := "mlen") rfl (by decide))
    (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (Fct := fun v => ∃ B, B < 2 ^ 64 ∧ v = V (W B))
    (fun s hL vs hvs callee v st _ hsh => sat_fct hsh) (fun v => rfl) ?_
  intro v ⟨B, hB, hv⟩
  subst hv
  exact stMlenG cx {g with M := B} MK hBl hEl hB hd

theorem stMlB {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64)
    (hBl : g.Bl ≤ 1024) (hEl : g.El ≤ 1024) (hd : ∃ o0 ∈ a.Γ0, o0.base = g.hdr ∧ o0.ty = tB96) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p8 g) m)) pmMl (QW Wq) := by
  unfold pmMl
  refine stFree cx cx.cp.ufb (fv := fun v => ("ml", v) :: p8 g) (by simp [sgAA]) (by simp [sgAA]) rfl
    (fun s hL vs hvs => by rw [evs_len' hvs]; rfl) (side_ofP (l := p8 g) (l0 := p8 g1) (x := "ml") rfl (by decide))
    (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (Fct := fun _ => True)
    (fun s hL vs hvs callee v st _ hsh => trivial) (fun v => rfl) ?_
  intro v _
  exact stMlenB cx {g with ml := v} MK hBl hEl hd

theorem stElenG {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64)
    (hBl : g.Bl ≤ 1024) (hE64 : g.El < 2 ^ 64) (hd : ∃ o0 ∈ a.Γ0, o0.base = g.hdr ∧ o0.ty = tB96) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p8 g) m)) (pmGuard "elen" pmMl) (QW Wq) :=
  guardK cx.hw cx.cp.ha.hH hE64 (fun s hL => LP.getE hL (by simp [p8]))
    (fun s hs ⟨⟨hL, hE1⟩, hK⟩ hg => stMlB cx g MK hBl hE1 hd s hs ⟨hL, hK⟩ hg)

theorem stElenB {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64)
    (hBl : g.Bl ≤ 1024) (hd : ∃ o0 ∈ a.Γ0, o0.base = g.hdr ∧ o0.ty = tB96) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p7 g) m)) pmElen (QW Wq) := by
  unfold pmElen
  refine stFree cx cx.cp.sw (fv := fun v => ("elen", v) :: p7 g) (by simp [sg1]) (by simp [sg1]) rfl
    (fun s hL vs hvs => by rw [evs_len' hvs]; rfl) (side_ofP (l := p7 g) (l0 := p7 g1) (x := "elen") rfl (by decide))
    (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (Fct := fun v => ∃ B, B < 2 ^ 64 ∧ v = V (W B))
    (fun s hL vs hvs callee v st _ hsh => sat_fct hsh) (fun v => rfl) ?_
  intro v ⟨B, hB, hv⟩
  subst hv
  exact stElenG cx {g with El := B} MK hBl hB hd

theorem stElB {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64)
    (hBl : g.Bl ≤ 1024) (hd : ∃ o0 ∈ a.Γ0, o0.base = g.hdr ∧ o0.ty = tB96) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p6 g) m)) pmEl (QW Wq) := by
  unfold pmEl
  refine stFree cx cx.cp.ufb (fv := fun v => ("el", v) :: p6 g) (by simp [sgAA]) (by simp [sgAA]) rfl
    (fun s hL vs hvs => by rw [evs_len' hvs]; rfl) (side_ofP (l := p6 g) (l0 := p6 g1) (x := "el") rfl (by decide))
    (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (Fct := fun _ => True)
    (fun s hL vs hvs callee v st _ hsh => trivial) (fun v => rfl) ?_
  intro v _
  exact stElenB cx {g with el := v} MK hBl hd

theorem stBlenG {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64)
    (hB64 : g.Bl < 2 ^ 64) (hd : ∃ o0 ∈ a.Γ0, o0.base = g.hdr ∧ o0.ty = tB96) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p6 g) m)) (pmGuard "blen" pmEl) (QW Wq) :=
  guardK cx.hw cx.cp.ha.hH hB64 (fun s hL => LP.getE hL (by simp [p6]))
    (fun s hs ⟨⟨hL, hB1⟩, hK⟩ hg => stElB cx g MK hB1 hd s hs ⟨hL, hK⟩ hg)

theorem stBlenB {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64)
    (hd : ∃ o0 ∈ a.Γ0, o0.base = g.hdr ∧ o0.ty = tB96) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p5 g) m)) pmBlen (QW Wq) := by
  unfold pmBlen
  refine stFree cx cx.cp.sw (fv := fun v => ("blen", v) :: p5 g) (by simp [sg1]) (by simp [sg1]) rfl
    (fun s hL vs hvs => by rw [evs_len' hvs]; rfl) (side_ofP (l := p5 g) (l0 := p5 g1) (x := "blen") rfl (by decide))
    (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (Fct := fun v => ∃ B, B < 2 ^ 64 ∧ v = V (W B))
    (fun s hL vs hvs callee v st _ hsh => sat_fct hsh) (fun v => rfl) ?_
  intro v ⟨B, hB, hv⟩
  subst hv
  exact stBlenG cx {g with Bl := B} MK hB hd

theorem stBlB {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64)
    (hd : ∃ o0 ∈ a.Γ0, o0.base = g.hdr ∧ o0.ty = tB96) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p4 g) m)) pmBl (QW Wq) := by
  unfold pmBl
  refine stFree cx cx.cp.ufb (fv := fun v => ("bl", v) :: p4 g) (by simp [sgAA]) (by simp [sgAA]) rfl
    (fun s hL vs hvs => by rw [evs_len' hvs]; rfl) (side_ofP (l := p4 g) (l0 := p4 g1) (x := "bl") rfl (by decide))
    (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (Fct := fun _ => True)
    (fun s hL vs hvs callee v st _ hsh => trivial) (fun v => rfl) ?_
  intro v _
  exact stBlenB cx {g with bl := v} MK hd

theorem stBr0 {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64)
    (hd : ∃ o0 ∈ a.Γ0, o0.base = g.hdr ∧ o0.ty = tB96) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p4 g) m))
      (.seq (callD (nm "buffer_read") [lv (nm "data"), lv (nm "n"), cw 0, cw 96, lv (nm "hdr")])
        pmBl) (QW Wq) := by
  refine hoareG_seqKW cx.hw (L := fun m => LP (p4 g) m)
    (hoareG_callK cx.cp.ha cx.cp.hgrow cx.cp.br (by simp [sgBR]) rfl ?_) (stBlB cx g MK hd)
  intro s _ hL Γ p he hh hK vs hvs
  have e1 : ev s (lv (nm "data")) = some g.data := LP.getE hL (by simp [p4])
  have e2 : ev s (lv (nm "n")) = some g.n := LP.getE hL (by simp [p4])
  have e3 : ev s (cw 0) = some (V (W 0)) := ev_cw s 0
  have e4 : ev s (cw 96) = some (V (W 96)) := ev_cw s 96
  have e5 : ev s (lv (nm "hdr")) = some (V g.hdr) := LP.getE hL (by simp [p4])
  rw [evs_cons e1 (evs_cons e2 (evs_cons e3 (evs_cons e4 (evs_cons e5 evs_nil))))] at hvs
  cases hvs
  have hW : (W 96).toNat = 96 := toNat_W (by norm_num)
  have hs := scells_hdr cx.cp.hL0 cx.cp.hty cx.cp.htyb he hd (n := 1 * (W 96).toNat + 0) (by simp [hW])
  exact ⟨argsOK_br (fun x hx => Or.inl (hs x hx)),
    fun x hx => foot_of_scell cx.cp.ha hh (hs x (argCells_br hx)), fun _ => trivial⟩

theorem stHdr {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p3 g) m)) pmHdr (QW Wq) := by
  unfold pmHdr
  refine hoareG_decKHW cx.hw cx.cp.ha.hH (L' := fun v m => LP (("hdr", v) :: p3 g) m)
    (Fct := fun v => ∃ H, v = V H ∧ ∃ o0 ∈ a.Γ0, o0.base = H ∧ o0.ty = tB96) ?_ ?_
  · intro s _ hL ⟨Γ, p, he, hh, hKp, hw⟩ v hv
    obtain ⟨p1, hp1, hord, hL1, hF1, hT1, hGl, hW⟩ := id hh.1
    obtain ⟨v', hv', ⟨o, ho, hob, hot⟩⟩ := hGl (nm "pre_hdr_buf") (.ptr tB96) cx.cp.hgt
    rw [ev_glob hv'] at hv
    cases hv
    have hnf := hh.2.2.2.2.2.2.2 cx.cp.hgrow
    have hpos := (hL1.1 o ho).2.2.1
    rcases hnf o ho o.base (by unfold Obj.lo; exact le_refl _)
      (by unfold Obj.hi; omega) with ⟨o0, ho0, hb, ht, -, -⟩ | hf
    · exact ⟨⟨v', rfl, o0, ho0, by rw [hb, hob], by rw [ht, hot]⟩,
        LP.dec hL "hdr" _ (side_ofP (l := p3 g) (l0 := p3 g1) (x := "hdr") rfl (by decide))⟩
    · exfalso
      unfold Fresh at hf
      omega
  · intro v ⟨H, hv, hdH⟩
    subst hv
    exact stBr0 cx {g with hdr := H} MK hdH

theorem stN' {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p2 g) m))
      (.dec (nm "n") .one (.load .one (.op .add [lv (nm "msg"), cw 96])) pmHdr) (QW Wq) := by
  refine hoareG_decKHW cx.hw cx.cp.ha.hH (L' := fun v m => LP (("n", v) :: p2 g) m) (Fct := fun _ => True) ?_ ?_
  · intro s _ hL _ v hv
    exact ⟨trivial, LP.dec hL "n" v (side_ofP (l := p2 g) (l0 := p2 g1) (x := "n") rfl (by decide))⟩
  · intro v _
    exact stHdr cx {g with n := v} MK

theorem stData' {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p1 g) m))
      (.dec (nm "data") .one (.load .one (.op .add [lv (nm "msg"), cw 88]))
        (.dec (nm "n") .one (.load .one (.op .add [lv (nm "msg"), cw 96])) pmHdr)) (QW Wq) := by
  refine hoareG_decKHW cx.hw cx.cp.ha.hH (L' := fun v m => LP (("data", v) :: p1 g) m) (Fct := fun _ => True) ?_ ?_
  · intro s _ hL _ v hv
    exact ⟨trivial, LP.dec hL "data" v (side_ofP (l := p1 g) (l0 := p1 g1) (x := "data") rfl (by decide))⟩
  · intro v _
    exact stN' cx {g with data := v} MK

theorem stMsg {a : Act σ} (cx : CPW σ X a Wq) (g : PM) (MK : BitVec 64) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP (p0 g) m)) pmBody (QW Wq) := by
  unfold pmBody
  refine hoareG_decKHW cx.hw cx.cp.ha.hH (L' := fun v m => LP (("msg", v) :: p0 g) m) (Fct := fun _ => True) ?_ ?_
  · intro s _ hL _ v hv
    exact ⟨trivial, LP.dec hL "msg" v (side_ofP (l := p0 g) (l0 := p0 g1) (x := "msg") rfl (by decide))⟩
  · intro v _
    exact stData' cx {g with msg := v} MK


end InitECandidate.Solver.MemSafe.Ops4

#print axioms InitECandidate.Solver.MemSafe.Ops4.stMsg
#print axioms InitECandidate.Solver.MemSafe.Ops4.stRest
