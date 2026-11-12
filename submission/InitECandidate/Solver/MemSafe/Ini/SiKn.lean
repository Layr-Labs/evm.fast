import InitECandidate.Solver.MemSafe.Ini.SiTail

/-!
# `state_init`: steps with an existentially quantified knowledge record

`J kvf K t = ∃ kn, SI a kn kvf t ∧ K kn`. Each lemma lifts one of the step lemmas.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Trie
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

def JK (a : Act σ) (kvf : List (MlS × BitVec 64 × FK)) (K : Know → Prop) (t : State σ) : Prop :=
  ∃ kn, SI a kn kvf t ∧ Dj kn ∧ K kn

theorem nqr_conseq {P : State σ → Prop} {p : ProgHOL 64} {J J' : State σ → Prop}
    {F : State σ → ValueHOL 64 → Prop} (h : HoareG σ X P p (NQr J F)) (hJ : ∀ t, J t → J' t) :
    HoareG σ X P p (NQr J' F) :=
  hoareG_conseq h (fun _ _ h => h) (fun r t _ _ hq => ⟨fun hr => hJ t (hq.1 hr), hq.2⟩)

theorem hoareG_ex' {α : Type} {P : α → State σ → Prop} {p : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : ∀ x, HoareG σ X (P x) p Q) :
    HoareG σ X (fun t => ∃ x, P x t) p Q := fun s hs ⟨x, hx⟩ hg => h x s hs hx hg

/-- A store into the `ws` block. -/
theorem storeWs_K {a : Act σ} (ha : ActOK a guestCtx) {kvf : List (MlS × BitVec 64 × FK)}
    {F : State σ → ValueHOL 64 → Prop} {e : ExpHOL 64} {k c : Nat} (hc : c = 8 * k) (hk : k < 5)
    {Kp Kq : Know → Prop} (x : Know → BitVec 64) (hW : ∀ kn, Kp kn → kn.W ≠ none)
    (hKq : ∀ kn, Kp kn → Kq { kn with wv := Function.update kn.wv k (some (x kn)) })
    (hev : ∀ kn s Γ q, Kp kn → SIc a kn kvf Γ q s → ev s e = some (.val (.word (x kn))))
    (hfit : ∀ kn s Γ q, Kp kn → SIc a kn kvf Γ q s → Fits Γ (wsK k) (x kn)) :
    HoareG σ guestCtx (JK a kvf Kp) (.store (.op .add [gv (nm "ws"), cw c]) e) (NQr (JK a kvf Kq) F) := by
  intro s hs ⟨kn, hS, hD, hK⟩ hg
  have hstep := step_store_ws (F := F) ha (kn := kn) (kvf := kvf) (e := e) (x := x kn) hc hk
    (hW := by
      obtain ⟨W, hW'⟩ := Option.ne_none_iff_exists'.mp (hW kn hK); exact ⟨W, hW'⟩)
    (fun s Γ q hS => hev kn s Γ q hK hS) (fun s Γ q hS => hfit kn s Γ q hK hS)
  have := hstep s hs hS hg
  exact ⟨fun hr => ⟨_, (this.1 hr), hD, hKq kn hK⟩, this.2⟩

/-- A store into the `bs` block. -/
theorem storeBs_K {a : Act σ} (ha : ActOK a guestCtx) {kvf : List (MlS × BitVec 64 × FK)}
    {F : State σ → ValueHOL 64 → Prop} {e : ExpHOL 64} {k c : Nat} (hc : c = 8 * k) (hk : k < 10)
    {Kp Kq : Know → Prop} (x : Know → BitVec 64) (hB : ∀ kn, Kp kn → kn.B ≠ none)
    (hKq : ∀ kn, Kp kn → Kq { kn with bv := Function.update kn.bv k (some (x kn)) })
    (hev : ∀ kn s Γ q, Kp kn → SIc a kn kvf Γ q s → ev s e = some (.val (.word (x kn))))
    (hfit : ∀ kn s Γ q, Kp kn → SIc a kn kvf Γ q s → Fits Γ (bsK k) (x kn)) :
    HoareG σ guestCtx (JK a kvf Kp) (.store (.op .add [gv (nm "bs"), cw c]) e) (NQr (JK a kvf Kq) F) := by
  intro s hs ⟨kn, hS, hD, hK⟩ hg
  have hstep := step_store_bs (F := F) ha (kn := kn) (kvf := kvf) (e := e) (x := x kn) hc hk
    (hB := by
      obtain ⟨B, hB'⟩ := Option.ne_none_iff_exists'.mp (hB kn hK); exact ⟨B, hB'⟩)
    (fun s Γ q hS => hev kn s Γ q hK hS) (fun s Γ q hS => hfit kn s Γ q hK hS)
  have := hstep s hs hS hg
  exact ⟨fun hr => ⟨_, (this.1 hr), hD, hKq kn hK⟩, this.2⟩

/-- `g = alloc(n)` for a raw block. -/
theorem alloc_K {a : Act σ} (ha : ActOK a guestCtx) (hX : guestCtx.code.lookup = guestCode)
    (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) (haH : a.H = guestHooksR (σ := σ))
    (hgr : a.sg.grows = true) {g : MlS} (hg : g ∈ hid) {n : Nat} (hn8 : n % 8 = 0) (hn : n < 2 ^ 32)
    (hn0 : 0 < n) {kvf : List (MlS × BitVec 64 × FK)} {Kp Kq : Know → Prop}
    (hW : ∀ kn, Kp kn → kn.W = none ∨ g ≠ nm "ws") (hB : ∀ kn, Kp kn → kn.B = none ∨ g ≠ nm "bs")
    (hSk : ∀ kn, Kp kn → kn.S = none ∨ g ≠ nm "sk_buf")
    (hJr : ∀ kn, Kp kn → kn.J = none ∨ g ≠ nm "journal")
    (Pe : State σ → Prop) (e : ExpHOL 64) (hev : ∀ t, Pe t → ev t e = some (.val (.word (BitVec.ofNat 64 n))))
    (keep : List (MlS × ValueHOL 64)) (hkeep : ∀ t, Pe t → ∀ q0 ∈ keep, t.globals.lookup q0.1 = some q0.2)
    (hkne : ∀ q0 ∈ keep, q0.1 ≠ gHeap ∧ q0.1 ≠ g)
    (set : Know → BitVec 64 → Know)
    (hset : ∀ (kn : Know) (W : BitVec 64) (Γ : Gam) (q : Ptrs) (t : State σ), Kp kn → SIc a kn kvf Γ q t →
      t.globals.lookup g = some (.val (.word W)) → BlkF a q Γ W n → DjNew kn W n →
      SIc a (set kn W) kvf Γ q t)
    (hKq : ∀ kn W, Kp kn → Kq (set kn W))
    (hDj : ∀ kn W, Kp kn → Dj kn → DjNew kn W n → Dj (set kn W)) {F : State σ → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (fun t => JK a kvf Kp t ∧ Pe t) (.call (some (some (.global, g), none)) (nm "alloc") [e])
      (NQr (fun t => JK a kvf Kq t ∧ ∀ q0 ∈ keep, t.globals.lookup q0.1 = some q0.2) F) := by
  intro s hs ⟨⟨kn, hS, hD, hK⟩, hPe⟩ hgd
  have hstep := step_alloc (F := F) ha hX haC hCb haH hgr hg hn8 hn hn0 kn kvf (hW kn hK) (hB kn hK)
    (hSk kn hK) (hJr kn hK) (fun t => SI a kn kvf t ∧ Pe t) (fun t h => h.1) e (fun t h => hev t h.2)
    keep (fun t h => hkeep t h.2) hkne
  have := hstep s hs ⟨hS, hPe⟩ hgd
  refine ⟨fun hr => ?_, this.2⟩
  obtain ⟨W, Γ, q, hext, hh, hSc, hlk, hbl, hdis, hkp⟩ := this.1 hr
  exact ⟨⟨set kn W, ⟨Γ, q, hext, hh, hset kn W Γ q _ hK hSc hlk hbl hdis⟩, hDj kn W hK hD hdis, hKq kn W hK⟩, hkp⟩

/-- `t = htab_new(KL, CP);` -/
theorem newAssign_K {a : Act σ} (ha : ActOK a guestCtx) (hX : guestCtx.code.lookup = guestCode)
    (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) (haH : a.H = guestHooksR (σ := σ))
    (hgr : a.sg.grows = true) {th KL CP : Nat} (hq : (KL, CP) ∈ Shards.newInst) (hth : th ∈ Types.hdrTys)
    (hrh : (Types.guestC.ty th).region = .heap) (hthk : Types.htKL th = KL) {T0 : BitVec 64} {k0 : FK}
    {base : List (MlS × BitVec 64 × FK)} (hbase : ∀ q ∈ base, q.1 ≠ nm "t") {K : Know → Prop}
    {F : State σ → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (JK a ((nm "t", T0, k0) :: base) K) (.call (some (some (.local, nm "t"), none)) (nm "htab_new") [cw KL, cw CP])
      (NQr (fun t => ∃ T, JK a ((nm "t", T, .ptr th) :: base) K t) F) := by
  intro s hs ⟨kn, hS, hD, hK⟩ hg
  have := step_new_assign (F := F) ha hX haC hCb haH hgr hq hth hrh hthk hbase kn s hs hS hg
  refine ⟨fun hr => ?_, this.2⟩
  obtain ⟨T, h⟩ := this.1 hr
  exact ⟨T, kn, h, hD, hK⟩

/-- `var t = htab_new(KL, CP); k`. -/
theorem newDec_K {a : Act σ} (ha : ActOK a guestCtx) (hX : guestCtx.code.lookup = guestCode)
    (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) (haH : a.H = guestHooksR (σ := σ))
    (hgr : a.sg.grows = true) {th KL CP : Nat} (hq : (KL, CP) ∈ Shards.newInst) (hth : th ∈ Types.hdrTys)
    (hrh : (Types.guestC.ty th).region = .heap) (hthk : Types.htKL th = KL)
    {kvf : List (MlS × BitVec 64 × FK)} (hkvf : ∀ q ∈ kvf, q.1 ≠ nm "t") {K : Know → Prop}
    {F : State σ → ValueHOL 64 → Prop} (hF' : CongrF F) {k : ProgHOL 64} {J2 : State σ → Prop}
    (hk : ∀ T : BitVec 64, HoareG σ guestCtx (JK a ((nm "t", T, .ptr th) :: kvf) K) k (NQr J2 F)) :
    HoareG σ guestCtx (JK a kvf K) (.decCall (nm "t") .one (nm "htab_new") [cw KL, cw CP] k)
      (NQr (fun _ => True) F) := by
  intro s hs ⟨kn, hS, hD, hK⟩ hg
  exact step_new_dec ha hX haC hCb haH hgr hq hth hrh hthk hkvf kn hF'
    (fun T => hoareG_pre (hk T) (fun t _ h => ⟨kn, h, hD, hK⟩)) s hs hS hg

/-- `var root = decode_witness_to_mpt(nodedb, state_root); k`. -/
theorem dwtm_K {a : Act σ} (ha : ActOK a guestCtx) (hX : guestCtx.code.lookup = guestCode)
    (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) (haH : a.H = guestHooksR (σ := σ))
    (hgr : a.sg.grows = true) (hcaps : a.caps = [])
    (hargs : ∀ x, ¬ ArgCells a.sg.params a.vs x) (hL0 : Layout Types.guestC a.p0 a.Γ0)
    {db rt : BitVec 64} {k1 k2 : FK} (hND : Hooks.NdbR a.Γ0 a.s0.memory db)
    {kvf : List (MlS × BitVec 64 × FK)} (hdb : (nm "nodedb", db, k1) ∈ kvf)
    (hrt : (nm "state_root", rt, k2) ∈ kvf) (hkvf : ∀ q ∈ kvf, q.1 ≠ nm "root") {K : Know → Prop}
    {F : State σ → ValueHOL 64 → Prop} (hF' : CongrF F) {k : ProgHOL 64} {J2 : State σ → Prop}
    (hk : ∀ R : BitVec 64, HoareG σ guestCtx (JK a ((nm "root", R, Types.nodeU) :: kvf) K) k (NQr J2 F)) :
    HoareG σ guestCtx (JK a kvf K)
      (.decCall (nm "root") .one (nm "decode_witness_to_mpt") [lv (nm "nodedb"), lv (nm "state_root")] k)
      (NQr (fun _ => True) F) := by
  intro s hs ⟨kn, hS, hD, hK⟩ hg
  exact step_dwtm ha hX haC hCb haH hgr hcaps hargs hL0 hND hdb hrt hkvf kn hF'
    (fun R => hoareG_pre (hk R) (fun t _ h => ⟨kn, h, hD, hK⟩)) s hs hS hg

end InitECandidate.Solver.MemSafe.Ini
