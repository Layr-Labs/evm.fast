import InitECandidate.Solver.MemSafe.Aw.Kit

set_option autoImplicit false

/-!
# Chains of writer calls

`p = p + w` after each of `w = f(p, ...)`: a sequence of writer calls that moves one pointer
forward. The pointer stays in `[h0, B9]` (`B9 = domTop + 137`) whatever the lengths are, because
each writer returns a length `k` with `p + k ≤ domTop + 128`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def bufN : MlS := nm "buf"
def markN : MlS := nm "mark"
def tmpN : MlS := nm "tmp"
def outN : MlS := nm "out"
def startN : MlS := nm "start"
def cntN : MlS := nm "cnt"

theorem num_facts2 : heapEnd + 9 ≤ B9 ∧ B9 ≤ 2 ^ 60 ∧ B0 ≤ B9 ∧ heapEnd < 2 ^ 60 := by
  unfold heapEnd B9 B0 domTop
  decide

/-- `callW f (p :: rest); p = p + w` for each step, then `k`. -/
def chainP (steps : List (MlS × List (ExpHOL 64))) (k : ProgHOL 64) : ProgHOL 64 :=
  steps.foldr (fun st acc => .seq (callW st.1 (lv pN :: st.2))
    (.seq (.assign .local pN (.op .add [lv pN, lv wN])) acc)) k

/-- `f` is a writer with a length bound. -/
def WriterOK (a : AwE σ) (X : Ctx 64) (f : MlS) : Prop :=
  ∃ RetF : List (ValueHOL 64) → ValueHOL 64 → Prop,
    ASp a X f (fun vs _ => PreW a vs) (fun vs v _ => RetF vs v) ∧
    ∀ vs v, RetF vs v → ∀ X' : BitVec 64, argW vs 0 = some X' →
      ∃ k : Nat, v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧ X'.toNat + k ≤ B0 ∧
        X'.toNat < domTop + 8

theorem writerOK_bytes {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) : WriterOK a X (nm "rlp_encode_bytes") :=
  ⟨_, asp_writer hK (footRet_encode_bytesA hC hA hT), retKx_enc⟩

theorem writerOK_word {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) : WriterOK a X (nm "rlp_encode_word") :=
  ⟨_, asp_writer hK (footRet_encode_wordA hC hA hT), retKx_w⟩

theorem writerOK_fin {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) : WriterOK a X (nm "rlp_finish_list") :=
  ⟨_, asp_writer hK (footRet_finish_listA hC hA hT), retKx_fin⟩

theorem hoareG_chain {a : AwE σ} (hK : AwOK a) {L : Locals → Prop}
    (hLw : ∀ m v, L m → L (m.update (wN, v)))
    (hLp : ∀ (m : Locals) (W : BitVec 64), L m → L (m.update (pN, .val (.word W))))
    {Lout : Locals → Prop} {Ret : ValueHOL 64 → Prop} {k : ProgHOL 64}
    (hk : HoareG σ X (APre a (fun m => L m ∧ Bd m pN a.h0 B9)) k (AQ a Lout Ret)) :
    ∀ (steps : List (MlS × List (ExpHOL 64))), (∀ st ∈ steps, WriterOK a X st.1) →
      HoareG σ X (APre a (fun m => L m ∧ Bd m pN a.h0 B9)) (chainP steps k) (AQ a Lout Ret)
  | [], _ => hk
  | st :: rest, hst => by
      have hn := num_facts2
      obtain ⟨RetF, hf, hRetK⟩ := hst st (by simp)
      have hrest := hoareG_chain hK hLw hLp hk rest (fun s hs => hst s (by simp [hs]))
      show HoareG σ X _ (.seq (callW st.1 (lv pN :: st.2))
        (.seq (.assign .local pN (.op .add [lv pN, lv wN])) (chainP rest k))) _
      refine hoareG_seqA (L2 := fun m => (L m ∧ Bd m pN a.h0 B9) ∧ TWn a.h0 pN m)
        (hoareG_callPtrA hK hf hRetK (lo := a.h0) (hi := B9) le_rfl hn.2.1 (fun m h => h.2)
          (fun m v h => ⟨hLw m v h.1, bd_upd (by decide) h.2⟩) (by decide)) ?_
      refine hoareG_seqA (L2 := fun m => L m ∧ Bd m pN a.h0 B9)
        (hoareG_addWA hK (x := pN) (y := pN) (lo := a.h0) ?_) hrest
      intro m W hm h1 h2
      exact ⟨hLp m W hm.1, bd_new _ _ _ h1 (by omega)⟩

/-- A heap mark kept in a local. -/
def MkB (lo : Nat) (x : MlS) (m : Locals) : Prop :=
  ∃ w : BitVec 64, m.lookup x = some (.val (.word w)) ∧ lo ≤ w.toNat ∧ w.toNat ≤ heapEnd ∧
    w.toNat % 8 = 0

theorem mkb_upd {lo : Nat} {x y : MlS} {m : Locals} {v : ValueHOL 64} (h : x ≠ y)
    (hy : MkB lo y m) : MkB lo y (m.update (x, v)) := by
  obtain ⟨w, hw, h1, h2, h3⟩ := hy
  exact ⟨w, by rw [lookup_update_ne _ _ h]; exact hw, h1, h2, h3⟩

theorem toNat_mulc {N : BitVec 64} {c : Nat} (h : N.toNat * c < 2 ^ 64) (hc : c < 2 ^ 64) :
    (N * BitVec.ofNat 64 c).toNat = N.toNat * c := by
  rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt hc, Nat.mod_eq_of_lt h]

theorem evs_four {s : State σ} {a b c d : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs s [a, b, c, d] = some vs) :
    ∃ v1 v2 v3 v4, vs = [v1, v2, v3, v4] ∧ ev s a = some v1 ∧ ev s b = some v2 ∧
      ev s c = some v3 ∧ ev s d = some v4 := by
  obtain ⟨v1, vs1, rfl, h1, h2⟩ := evs_cons_inv h
  obtain ⟨v2, v3, v4, rfl, h3, h4, h5⟩ := evs_three h2
  exact ⟨v1, v2, v3, v4, rfl, h1, h3, h4, h5⟩

theorem ev_lsl2 {s : State σ} {x : MlS} {V : BitVec 64}
    (h : s.locals.lookup x = some (.val (.word V))) :
    ev s (.shift .lsl (lv x) (cw 2)) = some (.val (.word (V <<< (2 : Nat)))) := by
  rw [ev_shift (ev_lw h) (ev_cw _ 2)]
  simp [wordShiftHOL]

end InitECandidate.Solver.MemSafe.Aw
