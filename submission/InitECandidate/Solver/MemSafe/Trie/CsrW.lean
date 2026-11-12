import InitECandidate.Solver.MemSafe.Trie.CsrArgs

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: writing one storage value (`csr_n_1`)

`n = u256_to_be_min(v, vbuf + 8); w = rlp_encode_bytes(vbuf + 40, vbuf + 8, n); enc = alloc(40);
memcpy(enc, vbuf + 40, w); mpt_set(mpt, e.1, 32, enc, w)`.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins

variable {σ : Type}

theorem fblk_sub {p0 : Ptrs} {B : BitVec 64} {sz : Nat} {Γ : Gam} {q : Ptrs} (h : FBlk p0 B sz Γ q)
    {off n : Nat} (hn : off + n ≤ sz) (hoff : off % 8 = 0) :
    BufOK Types.guestC Γ q (B.toNat + off) n ∧
      ∀ x : BitVec 64, Overlap (B.toNat + off) n x → ¬ InObj Γ x.toNat ∧ ¬ p0.Allocated x.toNat ∧
        B.toNat ≤ x.toNat ∧ x.toNat < B.toNat + sz := by
  obtain ⟨h8, hs8, hb, hq, hc⟩ := h
  have key : ∀ x : BitVec 64, Overlap (B.toNat + off) n x → ¬ InObj Γ x.toNat ∧ ¬ p0.Allocated x.toNat ∧
      B.toNat ≤ x.toNat ∧ x.toNat < B.toNat + sz := by
    intro x ⟨hx8, hx1, hx2⟩
    have : B.toNat ≤ x.toNat := by omega
    have hlt : x.toNat < B.toNat + sz := by omega
    exact ⟨(hc x.toNat this hlt).1, (hc x.toNat this hlt).2, this, hlt⟩
  refine ⟨fun x hx => Or.inr ⟨(key x hx).1, ?_⟩, key⟩
  obtain ⟨-, -, h3, h4⟩ := key x hx
  unfold Ptrs.Allocated
  left
  exact ⟨by omega, by omega⟩

/-- A sub-block `B + off` of a fresh block, as a word. -/
theorem blk_buf {a : Act σ} (hCb : a.Cb = Types.guestC) {p0 : Ptrs} {B : BitVec 64} {sz : Nat} {Γ : Gam}
    {q : Ptrs} (h : FBlk p0 B sz Γ q) (hq : q.Ordered) {off n : Nat} (hn : off + n ≤ sz)
    (hoff : off % 8 = 0) :
    (B + BitVec.ofNat 64 off).toNat = B.toNat + off ∧ BufOK a.Cb Γ q (B + BitVec.ofNat 64 off).toNat n ∧
      ∀ x : BitVec 64, Overlap (B + BitVec.ofNat 64 off).toNat n x → ¬ InObj Γ x.toNat ∧
        ¬ p0.Allocated x.toNat ∧ B.toNat ≤ x.toNat ∧ x.toNat < B.toNat + sz := by
  have hqe := hq.2.1
  have hE : heapEnd < 2 ^ 63 := by decide
  have hq' : B.toNat + sz ≤ q.hp := h.2.2.2.1
  have e : (B + BitVec.ofNat 64 off).toNat = B.toNat + off := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := off) (by omega)]
    exact Nat.mod_eq_of_lt (by omega)
  obtain ⟨hb, hbo⟩ := fblk_sub h hn hoff
  rw [← e] at hb hbo
  exact ⟨e, by rw [hCb]; exact hb, hbo⟩

/-- A table entry (no capabilities) as a call summary at the activation's configuration. -/
theorem sa_cast {a : Act σ} (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ))
    {f : MlS} {sg : Sig}
    (h : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) f sg []) :
    SumSpecA σ guestCtx a.Cb a.H f sg (fun _ _ _ => True) (fun _ s Γ x => CapPW [] s Γ x)
      (fun _ _ _ _ _ _ => True) := by
  rw [hCb, haH]
  exact sumSpecA_mono (sumA_of_csumm h) (fun _ _ _ _ => trivial) (fun _ _ _ _ h => h.elim)
    (fun _ _ _ _ _ _ h => h)

theorem ev_vb8 {s : State σ} {VB : BitVec 64} (h : s.locals.lookup (nm "vbuf") = some (.val (.word VB)))
    (k : Nat) : ev s (.op .add [lv (nm "vbuf"), cw k]) = some (.val (.word (VB + BitVec.ofNat 64 k))) :=
  ev_add2 (ev_lw h) (ev_cw s k)

theorem toNat_vb {VB : BitVec 64} {k : Nat} (h : VB.toNat + k < 2 ^ 64) :
    (VB + BitVec.ofNat 64 k).toNat = VB.toNat + k := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := k) (by have := VB.isLt; omega),
    Nat.mod_eq_of_lt h]

end InitECandidate.Solver.MemSafe.Trie
