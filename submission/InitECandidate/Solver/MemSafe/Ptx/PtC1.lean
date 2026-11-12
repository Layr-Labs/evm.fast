import InitECandidate.Solver.MemSafe.Ptx.PtB1

/-!
# F3d: chunk 1 of the walk (`bal_index`, `encode_transaction`, the `TXS[index]` stores)
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

/-- Globals named by `gobj` facts are not written by the callees (nor the allocator pointer). -/
structure GlI (S : FS) : Prop where
  gl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false ∧ g ≠ gHeap
  /-- the transaction state `ts` (reallocated by `state_fresh_tx`) is a `tTS` object -/
  ts : S (Fct.gobj nmTs tTS)

instance {S : FS} : CoeFun (GlI S) (fun _ => ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false ∧ g ≠ gHeap) :=
  ⟨GlI.gl⟩

theorem gl_one {S : FS} (h : GlI S) {X : Fct} (hX : ∀ g ty, X ≠ Fct.gobj g ty) :
    GlI (fun f => S f ∨ f = X) := by
  refine ⟨fun g ty hf => ?_, Or.inl h.ts⟩
  rcases hf with hf | hf
  · exact h g ty hf
  · exact absurd hf.symm (hX g ty)

theorem gl_addF {S : FS} (h : GlI S) {L : List Fct} (hX : ∀ X ∈ L, ∀ g ty, X ≠ Fct.gobj g ty) :
    GlI (addF S L) := by
  refine ⟨fun g ty hf => ?_, Or.inl h.ts⟩
  rcases hf with hf | hf
  · exact h g ty hf
  · exact absurd rfl (hX _ hf g ty)

/-- The locals the walk tracks in `Env` (every other local is untracked, i.e. `En x = none`). -/
def TRK : List MlS :=
  [nm "tx", nm "index", nm "enc", nm "sender", nm "cid", nm "intrinsic", nm "price", nm "mgas",
   nm "reservoir", nm "execution_gas", nm "regular_budget", nm "te", nm "m", nm "al_addrs", nm "al_keys",
   nm "aa", nm "ak", nm "nal", nm "nkeys", nm "i", nm "k", nm "empty", nm "txh", nm "out", nm "ct", nm "logs",
   nm "stable_logs", nm "rc", nm "nl", nm "lp", nm "slot", nm "rl", nm "stable_lp", nm "del", nm "dcap", nm "s"]

theorem trk_ne {x y : MlS} (hx : x ∈ TRK) (hy : y ∉ TRK) : y ≠ x := fun e => hy (e ▸ hx)

/-- The invariant before `bal_index = index + 1`. -/
structure Cx0 (E : PtE σ) (En : Env) (S : FS) : Prop where
  tx : En (nm "tx") = some (.val (.word E.tx))
  idx : En (nm "index") = some (.val (.word E.idx))
  obj : S (Fct.obj E.tx tTX 0)
  gl : GlI S
  nobal : ∀ ty, ¬ S (Fct.gobj (nm "bal_index") ty)
  nocv : ∀ a v, ¬ S (Fct.cellv a v)
  nord : ∀ f, S f → (∃ y, f.reads y) → ∃ a v, f = Fct.cellv a v
  un : ∀ x, x ∉ TRK → En x = none

theorem cx0_enter (E : PtE σ) : Cx0 E (En0 E) (S0 E) where
  tx := by simp [En0]
  idx := by
    have : nm "index" ≠ nm "tx" := by decide
    simp [En0, this]
  obj := Or.inl rfl
  gl := ⟨by
    intro g ty h
    rcases h with h | h | h | h | h | h | h | h <;> (cases h; try decide),
    Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr rfl))))))⟩
  nobal := by
    intro ty h
    rcases h with h | h | h | h | h | h | h | h <;>
      first | (cases h; done) | (have h1 := (Fct.gobj.inj h).1; revert h1; decide)
  nocv := by
    intro a v h
 
    rcases h with h | h | h | h | h | h | h | h <;> cases h
  nord := by
    intro f hf ⟨y, hy⟩
    rcases hf with h | h | h | h | h | h | h | h <;> (subst h; simp [Fct.reads] at hy)
  un := by
    intro x hx
    have h1 : x ≠ nm "tx" := fun e => hx (e ▸ by simp [TRK])
    have h2 : x ≠ nm "index" := fun e => hx (e ▸ by simp [TRK])
    simp [En0, h1, h2]

/-- After the `TXS[index]` stores. -/
structure Cx1 (E : PtE σ) (En : Env) (S : FS) (rp rl : BitVec 64) (buf n : Nat) (CV : List (BitVec 64)) : Prop where
  tx : En (nm "tx") = some (.val (.word E.tx))
  idx : En (nm "index") = some (.val (.word E.idx))
  enc : En (nm "enc") = some (wv [rp, rl])
  obj : S (Fct.obj E.tx tTX 0)
  objE : S (Fct.obj (BitVec.ofNat 64 buf) tVAL n)
  gl : GlI S
  nobal : ∀ ty, ¬ S (Fct.gobj (nm "bal_index") ty)
  cv1 : S (Fct.cellv (E.txs + E.idx * BitVec.ofNat 64 16) rp)
  cv2 : S (Fct.cellv (E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) rl)
  cvonly : ∀ a v, S (Fct.cellv a v) → a ∈ CV
  nord : ∀ f, S f → (∃ y, f.reads y) → ∃ a v, f = Fct.cellv a v
  bnd : 1 ≤ rl.toNat ∧ buf ≤ rp.toNat ∧ rp.toNat + rl.toNat ≤ buf + n ∧ buf % 8 = 0 ∧ n % 8 = 0 ∧ buf + n < 2 ^ 64
  un : ∀ x, x ∉ TRK → En x = none

theorem c1_ne_c2 (a : BitVec 64) : a ≠ a + BitVec.ofNat 64 8 := by
  intro h
  have h2 := congrArg BitVec.toNat h
  simp only [BitVec.toNat_add, BitVec.toNat_ofNat] at h2
  omega

theorem enc_fin : ptAllNames.contains (nm "encode_transaction") = true := by decide_cbv

/-- **Chunk 1**: `bal_index = index + 1; var enc = encode_transaction(tx); st TXS[index] ...`. -/
theorem pt_c1 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hP : PtPre E) (hEnc : HypEncTx σ) (hQT : LocIns QT) (C : Cx0 E En S)
    (hk : ∀ (rp rl : BitVec 64) (buf n : Nat) (En' : Env) (S' : FS), Cx1 E En' S' rp rl buf n
      [E.txs + E.idx * BitVec.ofNat 64 16, E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8] →
      Hoare σ guestCtx (PA E En' S') ptS7 QT) :
    Hoare σ guestCtx (PA E En S) ptS0 QT := by
  unfold ptS0
  refine hseqN (hn_assignG (w' := E.idx + BitVec.ofNat 64 1) (g := nm "bal_index") (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) C.nobal ?_) ?_
  · intro s hpa
    exact evI_add (evI_lv (hpa.2 _ _ C.idx)) (evI_cw s 1)
  unfold ptS1
  refine hdecEnc (locIns_resIns hQT _) hEnc enc_fin C.tx C.obj (fun g ty h => (C.gl g ty h).1) ?_
  intro rp rl buf n h1 h2 h3 h4 h5 h6
  have hne1 : nm "index" ≠ nm "enc" := by decide
  have hne2 : nm "tx" ≠ nm "enc" := by decide
  have hidx : (En.set (nm "enc") (wv [rp, rl])) (nm "index") = some (.val (.word E.idx)) := by
    rw [env_set_ne _ _ hne1]; exact C.idx
  have henc : (En.set (nm "enc") (wv [rp, rl])) (nm "enc") = some (wv [rp, rl]) := env_set_self _ _ _
  unfold ptS2
  refine hseqN (hn_st_txs0 hP hidx henc ?_) ?_
  · intro a v h
    rcases h with h | h
    · exact absurd h (C.nocv a v)
    · simp at h
  unfold ptS3
  refine hseqN (hn_st_txs1 hP hidx henc ?_) ?_
  · intro a v h
    rcases h with (h | h) | h
    · exact absurd h (C.nocv a v)
    · simp at h
    · have := (Fct.cellv.inj h).1
      rw [this]; exact c1_ne_c2 _
  unfold ptS5
  refine hseqN hn_skip ?_
  refine hk rp rl buf n _ _ ⟨?_, hidx, henc, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [env_set_ne _ _ hne2]; exact C.tx
  · exact Or.inl (Or.inl (Or.inl C.obj))
  · exact Or.inl (Or.inl (Or.inr (by simp)))
  · refine gl_one (gl_one (gl_addF C.gl ?_) ?_) ?_
    · intro X hX g ty; simp at hX; subst hX; simp
    · intro g ty; simp
    · intro g ty; simp
  · intro ty h
    rcases h with (h | h) | h
    · rcases h with h | h
      · exact C.nobal ty h
      · simp at h
    · cases h
    · cases h
  · exact Or.inl (Or.inr rfl)
  · exact Or.inr rfl
  · intro a v h
    rcases h with (h | h) | h
    · rcases h with h | h
      · exact absurd h (C.nocv a v)
      · simp at h
    · simp [(Fct.cellv.inj h).1]
    · simp [(Fct.cellv.inj h).1]
  · intro f hf ⟨y, hy⟩
    rcases hf with (hf | hf) | hf
    · rcases hf with hf | hf
      · exact C.nord f hf ⟨y, hy⟩
      · rcases List.mem_cons.mp hf with rfl | hf
        · simp [Fct.reads] at hy
        · exact absurd hf (by simp)
    · exact ⟨_, _, hf⟩
    · exact ⟨_, _, hf⟩
  · exact ⟨h1, h4, h5, h2, h3, h6⟩
  · intro y hy
    rw [env_set_ne _ _ (trk_ne (by simp [TRK]) hy)]; exact C.un y hy

end InitECandidate.Solver.MemSafe.Ptx
