import InitECandidate.Solver.MemSafe.Bal.IdxAcctCode
import InitECandidate.Solver.MemSafe.Bal.Ensure

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- A block `[R, R+n)` outside `Γ`, allocated at the current pointers, unallocated at entry `p0`. -/
def Blk (p0 : Ptrs) (R : BitVec 64) (n : Nat) (Γ : Gam) (t : State σ) : Prop :=
  ∃ q, ptrsOf t = some q ∧ R.toNat % 8 = 0 ∧ R.toNat + n < 2 ^ 64 ∧
    ∀ c, R.toNat ≤ c → c < R.toNat + n → ¬ InObj Γ c ∧ ¬ p0.Allocated c ∧ q.Allocated c

theorem blk_keep' {Γ Γ' : Gam} {p p' p0 : Ptrs} {R : BitVec 64} {n : Nat} (hord : p.Ordered)
    (hord' : p'.Ordered) (hm : p.Mono p') (hnf : NewFresh Γ Γ' p p')
    (h : ∀ c, R.toNat ≤ c → c < R.toNat + n → ¬ InObj Γ c ∧ ¬ p0.Allocated c ∧ p.Allocated c) :
    ∀ c, R.toNat ≤ c → c < R.toNat + n → ¬ InObj Γ' c ∧ ¬ p0.Allocated c ∧ p'.Allocated c := by
  intro c h1 h2
  obtain ⟨hn, hn0, hal⟩ := h c h1 h2
  refine ⟨?_, hn0, ?_⟩
  · rintro ⟨o, ho, ho1, ho2⟩
    have hlt : c < 2 ^ 64 := by
      have := alloc_lt hord hal
      have : scratchEnd < 2 ^ 64 := by decide
      omega
    have hcb : (BitVec.ofNat 64 c).toNat = c := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hlt]
    rcases hnf o ho (BitVec.ofNat 64 c) (by rw [hcb]; exact ho1) (by rw [hcb]; exact ho2) with
      ⟨o0, ho0, -, -, h3, h4⟩ | hf
    · exact hn ⟨o0, ho0, by rw [hcb] at h3; exact h3, by rw [hcb] at h4; exact h4⟩
    · have := Struct.fresh_notAlloc hord hord' hm hf
      rw [hcb] at this
      exact this hal
  · unfold Ptrs.Allocated at hal ⊢
    obtain ⟨m1, m2, m3⟩ := hm
    omega

theorem blk_step {p0 : Ptrs} {R : BitVec 64} {n : Nat} {Γ Γ' : Gam} {s st : State σ} {p p' : Ptrs}
    (h : Blk p0 R n Γ s) (hps : ptrsOf s = some p) (hps' : ptrsOf st = some p') (hord : p.Ordered)
    (hord' : p'.Ordered) (hm : p.Mono p') (hnf : NewFresh Γ Γ' p p') : Blk p0 R n Γ' st := by
  obtain ⟨q, hq, h8, hlt, hc⟩ := h
  rw [hps] at hq
  cases hq
  exact ⟨p', hps', h8, hlt, blk_keep' hord hord' hm hnf hc⟩

theorem blk_congr {p0 : Ptrs} {R : BitVec 64} {n : Nat} {Γ : Gam} {s t : State σ}
    (h : Blk p0 R n Γ s) (hg : t.globals = s.globals) : Blk p0 R n Γ t := by
  obtain ⟨q, hq, h8, hlt, hc⟩ := h
  exact ⟨q, by rw [← hq]; unfold ptrsOf gword; rw [hg], h8, hlt, hc⟩

theorem blk_bufOK {p0 : Ptrs} {R : BitVec 64} {n : Nat} {Γ : Gam} {t : State σ} {q : Ptrs}
    (h : Blk p0 R n Γ t) (hq : ptrsOf t = some q) {b m : Nat} (h1 : R.toNat ≤ b)
    (h2 : b + m ≤ R.toNat + n) : BufOK guestC Γ q b m := by
  obtain ⟨q', hq', h8, hlt, hc⟩ := h
  rw [hq] at hq'
  cases hq'
  intro a ⟨ha8, ha1, ha2⟩
  right
  have := hc a.toNat (by omega) (by omega)
  exact ⟨this.1, this.2.2⟩

theorem blk_notAlloc {p0 : Ptrs} {R : BitVec 64} {n : Nat} {Γ : Gam} {t : State σ}
    (h : Blk p0 R n Γ t) {b m : Nat} (h1 : R.toNat ≤ b) (h2 : b + m ≤ R.toNat + n)
    {a : BitVec 64} (hov : Overlap b m a) : ¬ p0.Allocated a.toNat := by
  obtain ⟨q', hq', h8, hlt, hc⟩ := h
  obtain ⟨ha8, ha1, ha2⟩ := hov
  exact (hc a.toNat (by omega) (by omega)).2.1

/-- A multi-word store inside the block keeps the tracking. -/
theorem trk_blkstore (hH : HooksLawful guestC (guestHooksR (σ := σ))) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {PW : BitVec 64 → Prop} {Γ : Gam} {t : State σ} {R : BitVec 64} {n : Nat}
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 PW Γ t) (hB : Blk p0 R n Γ t)
    {w : BitVec 64} {vals : List (HolWordLab 64)} {mem : Mem}
    (hmem : @panMemStoresHOL 64 _ w vals t.memaddrs (fun y => Classical.propDecidable (t.memaddrs y)) t.memory
      = some mem) (h1 : R.toNat ≤ w.toNat) (h2 : w.toNat + 8 * vals.length ≤ R.toNat + n) :
    Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 PW Γ { t with memory := mem } := by
  obtain ⟨hmod, -⟩ := Helpers.stores_mod hmem
  obtain ⟨q, hq, h8, hlt, hc⟩ := hB
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod0, hpg, hd, hbe⟩ := hT
  have hcell : ∀ a, (∃ j, j < vals.length ∧ a = w + BitVec.ofNat 64 (8 * j)) →
      R.toNat ≤ a.toNat ∧ a.toNat < R.toNat + n ∧ a.toNat = w.toNat + (a.toNat - w.toNat) := by
    rintro a ⟨j, hj, rfl⟩
    have : (w + BitVec.ofNat 64 (8 * j)).toNat = w.toNat + 8 * j := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
    rw [this]
    refine ⟨by omega, by omega, by omega⟩
  have hb : ∀ a, (∃ j, j < vals.length ∧ a = w + BitVec.ofNat 64 (8 * j)) →
      ¬ InObj Γ a.toNat ∧ ¬ p0.Allocated a.toNat := fun a ha => by
    obtain ⟨x1, x2, -⟩ := hcell a ha
    have := hc a.toNat x1 x2
    exact ⟨this.1, this.2.1⟩
  refine ⟨p, hp, hm, hx, hnf, G_frame hH hG rfl (fun _ _ _ => rfl) (fun _ _ => rfl) rfl rfl
    (fun b hb' => hmod b fun hb'' => (hb b hb'').1 hb'), fun b hb' => ?_, hpg, hd, hbe⟩
  show mem b = s0.memory b
  rw [hmod b fun hb'' => hb' (Or.inr (Or.inl (hb b hb'').2))]
  exact hmod0 b hb'


theorem ev_load4 {s : State σ} {a : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.load (.comb [.one, .one, .one, .one]) a) = some v) : (flattenHOL v).length = 4 := by
  simp only [ev, evalHOLExact] at h
  split at h
  · split at h
    · rename_i w hw
      simp only [memLoadHOLExact] at h
      split at h
      · rename_i vals hvals
        simp only [Option.some.injEq] at h
        subst h
        simp only [memLoadsHOLExact] at hvals
        simp only [memLoadHOLExact] at hvals
        split_ifs at hvals <;> simp at hvals
        subst hvals
        simp [flattenHOL]
      · simp at h
    · simp at h
  · simp at h

theorem ev_load1_len {s : State σ} {a : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.load .one a) = some v) : (flattenHOL v).length = 1 := by
  obtain ⟨w, -, -, rfl⟩ := ev_load_one h
  cases hm : s.memory w <;> simp [flattenHOL]

end InitECandidate.Solver.MemSafe.Bal
