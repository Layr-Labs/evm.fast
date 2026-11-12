import InitECandidate.Solver.MemSafe.BalEnc.Bbl2

set_option autoImplicit false

/-!
# `build_block_access_list_rlp`, phase 2: the proof
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option synthInstance.maxSize 100000
set_option synthInstance.maxHeartbeats 1000000

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

def rkM24 (hp : Nat) (O N : BitVec 64) : Prop :=
  hp ≤ O.toNat ∧ O.toNat ≤ heapEnd ∧
    (N.toNat < 2 ^ 63 → N.toNat * 24 ≤ domTop + 64 ∧ O.toNat + N.toNat * 24 + 8 ≤ heapEnd)

def BblRet (a : AwE σ) (v : ValueHOL 64) : Prop :=
  ∃ S L : BitVec 64, v = .rStruct [.val (.word S), .val (.word L)] ∧ a.h0 ≤ S.toNat ∧
    S.toNat + L.toNat ≤ B0 ∧ 1 ≤ L.toNat

/-- Facts of the phase-2 body after `htab_keys`. -/
def f2Facts (hp : Nat) : List Fct := [Fct.str2 cAddrs (rkM24 hp), wd cTmp]

macro "avb" : tactic => `(tactic| (
  simp only [Av, wd, cf, pf, f2Facts, List.forall_mem_cons, List.forall_mem_append]
  try simp only [Fct.vars, List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false, not_or]
  repeat' constructor
  all_goals first | assumption | decide | (intro x hx; exact hx.elim)))

/-- `x = e` for an untracked variable keeps the facts. -/
theorem hoareG_asgU {a : AwE σ} (hK : AwOK a) {x : MlS} {e : ExpHOL 64} {fs : List Fct}
    {Ret : ValueHOL 64 → Prop} (hx : Av fs x) :
    HoareG σ guestCtx (APre a (Hs fs)) (.assign .local x e) (AQ a (Hs fs) Ret) :=
  hoareG_assignA hK (fun s _ hL v hv => hs_upd hx hL)

set_option maxHeartbeats 8000000 in
theorem hoareG_sizeBody {a : AwE σ} (hK : AwOK a) (hc : CsE a) (hgw : a.gw = [])
    (hBA : Bal.BalNN a.s0 a.Γ0) {fs : List Fct}
    (hfs : ∀ f ∈ fs, ∀ x ∈ [cTotal, cI, cM, cAd, cSc, cScap, cJ, cE, cCl, cCn, cCp], x ∉ f.vars)
    {Ret : ValueHOL 64 → Prop} :
    HoareG σ guestCtx (APre a (Hs fs)) sizeBody (AQ a (Hs fs) Ret) := by
  have hasg : ∀ x ∈ [cTotal, cI, cM, cAd, cSc, cScap, cJ, cE, cCl, cCn, cCp], Av fs x :=
    fun x hx f hf => hfs f hf x hx
  have aTotal : Av fs cTotal := hasg _ (by simp)
  have aJ : Av fs cJ := hasg _ (by simp)
  have aI : Av fs cI := hasg _ (by simp)
  unfold sizeBody
  -- m = htab_get(bal_accounts, key)
  refine hoareG_decCallH hK (asp_htab_getT hK hc (th := tHTd20) (by decide)) (rn := cM)
    (sh := .comb [.one, .one]) (fx := []) (fo := fs) (fb := fs) (hasg _ (by simp)) (hasg _ (by simp)) ?hpre
    (fun _ _ _ _ _ _ _ _ => hs_nil _) ?body (fun f hf => hf)
  case hpre =>
    intro s hs hP' vs hvs callee
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    obtain ⟨T, rfl, hT⟩ := ba_fits hc hBA hP'.1 hgw e1
    obtain ⟨K, rfl⟩ := Spec.ev_op_word e2
    exact ⟨T, K, rfl, hT⟩
  case body =>
    have decU : ∀ (x : MlS) (e : ExpHOL 64) (b : ProgHOL 64), Av fs x →
        HoareG σ guestCtx (APre a (Hs fs)) b (AQ a (Hs fs) Ret) →
        HoareG σ guestCtx (APre a (Hs fs)) (.dec x .one e b) (AQ a (Hs fs) Ret) :=
      fun x e b hx hb => hoareG_decHI hK (x := x) (fx := []) (fo := fs) (fb := fs) hx hx
        (fun _ _ _ _ _ _ => hs_nil _) hb (fun f hf => hf)
    have asg : ∀ x e, Av fs x →
        HoareG σ guestCtx (APre a (Hs fs)) (.assign .local x e) (AQ a (Hs fs) Ret) :=
      fun x e hx => hoareG_asgU hK hx
    refine decU cAd _ _ (hasg _ (by simp)) ?_
    refine hoareG_seqA (L2 := Hs fs) (asg _ _ aTotal) ?_
    refine hoareG_seqA (L2 := Hs fs) (asg _ _ aTotal) ?_
    refine decU cSc _ _ (hasg _ (by simp)) ?_
    refine decU cScap _ _ (hasg _ (by simp)) ?_
    refine decU cJ _ _ aJ ?_
    refine hoareG_seqA (L2 := Hs fs) ?_ ?_
    · -- the storage-change loop
      unfold loopSC
      refine hoareG_whileA hK (J := Hs fs) (J' := Hs fs) ?_ (fun s _ h _ => h)
      refine hoareG_pre (P := APre a (Hs fs)) ?_ (fun s _ h => h.1)
      refine hoareG_decCallH hK (asp_htab_item hK hc) (rn := cE) (sh := .comb [.one, .one, .one])
        (fx := []) (fo := fs) (fb := fs) (hasg _ (by simp)) (hasg _ (by simp))
        (fun s hs hP' vs hvs callee => by
          obtain ⟨v1, v2, rfl, -, -⟩ := evs_two hvs
          exact ⟨v1, v2, rfl⟩)
        (fun _ _ _ _ _ _ _ _ => hs_nil _) ?_ (fun f hf => hf)
      exact hoareG_seqA (L2 := Hs fs) (hoareG_iteA (asg _ _ aTotal) (hoareG_skipA fun m h => h))
        (asg _ _ aJ)
    refine hoareG_seqA (L2 := Hs fs) (asg _ _ aTotal) ?_
    refine hoareG_seqA (L2 := Hs fs) (asg _ _ aTotal) ?_
    refine decU cCl _ _ (hasg _ (by simp)) ?_
    refine decU cCn _ _ (hasg _ (by simp)) ?_
    refine decU cCp _ _ (hasg _ (by simp)) ?_
    refine hoareG_seqA (L2 := Hs fs) (asg _ _ aJ) ?_
    refine hoareG_seqA (L2 := Hs fs) ?_ (asg _ _ aI)
    unfold loopCode
    refine hoareG_whileA hK (J := Hs fs) (J' := Hs fs) ?_ (fun s _ h _ => h)
    refine hoareG_pre (P := APre a (Hs fs)) ?_ (fun s _ h => h.1)
    exact hoareG_seqA (L2 := Hs fs) (asg _ _ aTotal) (asg _ _ aJ)


/-- `bal_encode_account` as an `ASp` (the encoder spec at `guestCS`). -/
theorem asp_bal_encode {a : AwE σ} (hK : AwOK a) (hc : CsE a) :
    ASp a guestCtx (nm "bal_encode_account")
      (fun vs _ => ∃ dst addr ad tmp : BitVec 64, vs = [.val (.word dst), .val (.word addr),
          .val (.word ad), .val (.word tmp)] ∧ Fits a.Γ0 (.nptr tAD) ad ∧ a.h0 ≤ dst.toNat ∧
          dst.toNat + 16 ≤ 2 ^ 60)
      (fun vs v _ => EncRetA vs v) := by
  have hAW : AWSpecG σ guestCtx a.C a.H (nm "bal_encode_account") [] BalPre
      (fun vs _ v _ => EncRetA vs v) := by
    rw [hc.C, hc.H]; exact awSpecG_bal_cs
  refine asp_of_awG2 hK hAW (fun g hg => absurd hg (by simp)) ?_ (fun vs s v t h => h)
  intro vs s Γ' hG hE ⟨dst, addr, ad, tmp, hvs, hfit, h1, h2⟩
  exact ⟨dst, addr, ad, tmp, hvs, fits_ext hE hfit, h1, h2⟩

def fB (hp h0 : Nat) : List Fct := Fct.bd cBuf h0 heapEnd :: f2Facts hp
def fC (hp h0 : Nat) : List Fct := Fct.bd cP h0 B0 :: Fct.rel cBuf cP :: fB hp h0
def mFact (Γ0 : Gam) : Fct :=
  Fct.str2 cM2 (fun A B => (A ≠ 0 → Fits Γ0 (.ptr tAD) B) ∧ (A = 0 → B = 0))
def Rpay (B P Y : BitVec 64) : Prop := Y.toNat + B.toNat + 9 = P.toNat
def Rst (HL B S : BitVec 64) : Prop := S.toNat + HL.toNat = B.toNat + 9
def fG1 (hp h0 : Nat) : List Fct := Fct.rel3 cBuf cP cPayload Rpay :: wd cPayload :: fC hp h0
def fG2 (hp h0 : Nat) : List Fct := Fct.bd cHl 1 9 :: fG1 hp h0
def fG3 (hp h0 : Nat) : List Fct :=
  Fct.rel3 cHl cBuf cStart Rst :: Fct.bd cStart h0 B0 :: fG2 hp h0

macro "avc2" : tactic => `(tactic| (
  simp only [Av, wd, cf, pf, f2Facts, fB, fC, mFact, fG1, fG2, fG3, List.forall_mem_cons, List.forall_mem_append]
  try simp only [Fct.vars, List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false, not_or]
  repeat' constructor
  all_goals first | assumption | decide | (intro x hx; exact hx.elim)))

end InitECandidate.Solver.MemSafe.BalEnc
