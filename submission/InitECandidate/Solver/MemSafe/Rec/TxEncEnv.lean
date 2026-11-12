import InitECandidate.Solver.MemSafe.Rec.TxSeq
import InitECandidate.Solver.MemSafe.Hooks.RecTx

set_option autoImplicit false

/-!
# `tx_encode_generic`: hypotheses and the activation's environment

* **`EncHyps ALPf AUPf σ X H`**: what the proof of `tx_encode_generic` takes from its callees that
  are not yet proved (`research/notes/records-status.md`, task 3 remaining): the summary and value
  of `tx_encode_bound` (`boundF`), the writer specs of `tx_put_u256` (≤ 33 bytes),
  `tx_put_access_list` (≤ `9 + ALPf`), `tx_put_authorizations` (≤ `9 + AUPf`), the bounds
  `ALPf ≤ accSum`, `AUPf ≤ 147 n`, their dependence on the record bytes only, and that a
  `tTX` object's hook gives `TxW`.
* `EncEnv`: the fixed facts of one activation (the tx object, its `TxW`, the output block).
* `ev_tw`: a field load of the tx record reads the entry memory.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.WaveHelpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-- `rd m (TX + k)`. -/
def fld (m : Mem) (TX : BitVec 64) (k : Nat) : BitVec 64 := rd m (TX + BitVec.ofNat 64 k)

/-- The value `tx_encode_bound` returns (before wrapping). -/
def boundF (m : Mem) (TX : BitVec 64) (ALPf AUPf : Mem → BitVec 64 → BitVec 64 → Nat) : Nat :=
  655 + (fld m TX 200).toNat + ALPf m (fld m TX 208) (fld m TX 216) +
    AUPf m (fld m TX 272) (fld m TX 280) + 33 * (fld m TX 264).toNat

def PreU (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ (D : BitVec 64) (v : ValueHOL 64), vs = [.val (.word D), v] ∧ D.toNat + 33 ≤ scratchEnd ∧
    ∃ p, ptrsOf s = some p ∧ p.Ordered

def PreA (ALPf : Mem → BitVec 64 → BitVec 64 → Nat) (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ D P N : BitVec 64, vs = [.val (.word D), .val (.word P), .val (.word N)] ∧
    D.toNat + 9 + ALPf s.memory P N ≤ scratchEnd ∧ (N.toNat = 0 ∨ P.toNat + 24 * N.toNat ≤ D.toNat) ∧
    accSum s.memory P N.toNat < 2 ^ 63

def FA (ALPf : Mem → BitVec 64 → BitVec 64 → Nat) (vs : List (ValueHOL 64)) (s : State σ) : Nat :=
  match argW vs 1, argW vs 2 with
  | some P, some N => 9 + ALPf s.memory P N
  | _, _ => 0

def PreAu (AUPf : Mem → BitVec 64 → BitVec 64 → Nat) (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ D P N : BitVec 64, vs = [.val (.word D), .val (.word P), .val (.word N)] ∧
    D.toNat + 9 + AUPf s.memory P N ≤ scratchEnd ∧ (N.toNat = 0 ∨ P.toNat + 120 * N.toNat ≤ D.toNat) ∧
    ∃ q : Ptrs, ptrsOf s = some q ∧ q.Ordered ∧ (N.toNat = 0 ∨ P.toNat + 120 * N.toNat ≤ q.hp)

def FAu (AUPf : Mem → BitVec 64 → BitVec 64 → Nat) (vs : List (ValueHOL 64)) (s : State σ) : Nat :=
  match argW vs 1, argW vs 2 with
  | some P, some N => 9 + AUPf s.memory P N
  | _, _ => 0

/-- `tx_encode_bound`'s fold signature (`ShardsJL.tab26` entry 55). -/
def tebSig : Sig := ⟨[.any], [], [], false⟩

/-- **The callee facts `tx_encode_generic` needs** (to be proved separately). -/
structure EncHyps (ALPf AUPf : Mem → BitVec 64 → BitVec 64 → Nat) (σ : Type) (X : Ctx 64)
    (H : Hooks σ) : Prop where
  bsum : CSumm σ X guestC H (nm "tx_encode_bound") tebSig []
  bval : FunSpec σ X (nm "tx_encode_bound") (fun vs s r _ => Good (some r) → ∀ TX : BitVec 64,
    vs = [.val (.word TX)] → ∀ v, r = .returned v →
      v = .val (.word (BitVec.ofNat 64 (boundF s.memory TX ALPf AUPf))))
  u256 : WSpec σ X (nm "tx_put_u256") PreU (fun _ _ => 33)
  acc : WSpec σ X (nm "tx_put_access_list") (PreA ALPf) (FA ALPf)
  auth : WSpec σ X (nm "tx_put_authorizations") (PreAu AUPf) (FAu AUPf)
  alp : ∀ m P N, accSum m P N.toNat < 2 ^ 63 → ALPf m P N ≤ accSum m P N.toNat
  aup : ∀ m P N, AUPf m P N ≤ 147 * N.toNat
  alpc : ∀ m m' P N, P.toNat + 24 * N.toNat < 2 ^ 64 → (∀ x : BitVec 64, P.toNat ≤ x.toNat →
    x.toNat < P.toNat + 24 * N.toNat → m' x = m x) → ALPf m' P N = ALPf m P N
  aupc : ∀ m m' P N, P.toNat + 120 * N.toNat < 2 ^ 64 → (∀ x : BitVec 64, P.toNat ≤ x.toNat →
    x.toNat < P.toNat + 120 * N.toNat → m' x = m x) → AUPf m' P N = AUPf m P N
  get : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tTX → H.wf Γ s o → TxW Γ s.memory o

/-- `tx_encode_generic`'s signature. -/
def teSig : Sig := ⟨[.fits (.ptr tTX), .any, .any], [], [], false⟩

/-- **The fixed facts of one activation of `tx_encode_generic`.** -/
structure EncEnv (a : Act σ) (X : Ctx 64) (o : Obj) (TX Bf : BitVec 64) (Bn : Nat)
    (ALPf AUPf : Mem → BitVec 64 → BitVec 64 → Nat) : Prop where
  ha : ActOK a X
  hL0 : Layout a.C a.p0 a.Γ0
  hsg : a.sg = teSig
  hcs : a.caps = []
  hC : a.C = guestC
  ho : o ∈ a.Γ0
  hob : o.base = TX
  hot : o.ty = tTX
  htx : TxW a.Γ0 a.s0.memory o
  hBn : Bn = boundF a.s0.memory TX ALPf AUPf
  hBe : Bf.toNat + Bn ≤ scratchEnd
  hhp : a.p0.hp ≤ Bf.toNat

section env
variable {a : Act σ} {o : Obj} {TX Bf : BitVec 64} {Bn : Nat}
  {ALPf AUPf : Mem → BitVec 64 → BitVec 64 → Nat}

theorem EncEnv.stable (hv : EncEnv a X o TX Bf Bn ALPf AUPf) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap a Γ q s) {x : Obj} (hx : x ∈ a.Γ0) (hpr : ∀ k, (guestC.ty x.ty).slot k = .prot)
    {y : BitVec 64} (h1 : x.lo ≤ y.toNat) (h2 : y.toNat < x.hi) : s.memory y = a.s0.memory y := by
  refine stable_obj hv.ha hv.hL0 (fun pt hp k => ?_) (fun pt hp i c d => ?_) hv.hcs hh hx
    (fun k => by rw [hv.hC]; exact hpr k) h1 h2
  · rw [hv.hsg] at hp
    simp only [teSig, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl <;> simp
  · rw [hv.hsg] at hp
    simp only [teSig, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl <;> simp

theorem heapEnd_lt' : heapEnd < 2 ^ 64 := by decide

/-- A tx field cell: inside the tx object. -/
theorem EncEnv.fld_in (hv : EncEnv a X o TX Bf Bn ALPf AUPf) {k : Nat} (hk : k < 400) :
    o.lo ≤ (TX + BitVec.ofNat 64 k).toNat ∧ (TX + BitVec.ofNat 64 k).toNat < o.hi := by
  obtain ⟨hs, hlo, -⟩ := hv.htx
  have hl : o.lo = TX.toNat := by unfold Obj.lo; rw [hv.hob]
  have e : (TX + BitVec.ofNat 64 k).toNat = TX.toNat + k := toNat_addc (by
    have := heapEnd_lt'; omega)
  have hhi : o.hi = TX.toNat + o.size := by unfold Obj.hi; rw [← hl]; rfl
  rw [e, hhi, hl]
  omega

/-- **A field load of the tx record** reads the entry memory. -/
theorem EncEnv.ev_tw (hv : EncEnv a X o TX Bf Bn ALPf AUPf) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap a Γ q s) (htx : s.locals.lookup (nm "tx") = some (.val (.word TX))) {k : Nat}
    (hk : k < 400) {v : ValueHOL 64} (h : ev s (tw k) = some v) :
    v = .val (.word (fld a.s0.memory TX k)) := by
  obtain ⟨w, hw, -, rfl⟩ := Spec.ev_load_one h
  rw [ev_add2 (ev_lw htx) (ev_cw _ k)] at hw
  cases hw
  obtain ⟨h1, h2⟩ := hv.fld_in hk
  rw [hv.stable hh hv.ho (by rw [hv.hot]; exact tx_prot) h1 h2]
  unfold fld rd
  cases a.s0.memory (TX + BitVec.ofNat 64 k)
  rfl

theorem EncEnv.txF_fld (hv : EncEnv a X o TX Bf Bn ALPf AUPf) (k : Nat) :
    txF a.s0.memory o k = fld a.s0.memory TX (8 * k) := by
  unfold txF fld Obj.cell
  rw [hv.hob]

end env

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.EncEnv.ev_tw
