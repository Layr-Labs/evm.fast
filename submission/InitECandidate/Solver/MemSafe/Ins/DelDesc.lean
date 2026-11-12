import InitECandidate.Solver.MemSafe.Ins.DelCode

set_option autoImplicit false

/-!
# `_mpt_delete_node_body`, descent loop: invariant and kit

The loop invariant `JD`: named locals `(node, key, klen, level, top, res, go)` with values
`Nd K KL Lv Res G T`, and the memory facts `DE`: `node` fits `nodeU`, `level <= klen`, the key is a
`` slice, `res` is null or a node, and `top` heads a typed record chain (`DlG`).
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

set_option hygiene false in
/-- Discharge the "everything else is unchanged" side condition of `lkv_upd_gen`. -/
macro "lkv_rest " "[" ids:Lean.Parser.Tactic.simpLemma,* "]" : tactic =>
  `(tactic| (intro p hp hne; simp only [$ids,*, List.mem_cons, List.not_mem_nil, or_false] at hp; rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [$ids,*]⟩))

set_option hygiene false in
/-- Every pair of a list is a member of a longer list. -/
macro "kv_sub " "[" ids:Lean.Parser.Tactic.simpLemma,* "]" : tactic =>
  `(tactic| (intro p hp; simp only [$ids,*, List.mem_cons, List.not_mem_nil, or_false] at hp; rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> simp [$ids,*]))

set_option hygiene false in
/-- A name is not bound in a list. -/
macro "lkv_fresh " "[" ids:Lean.Parser.Tactic.simpLemma,* "]" : tactic =>
  `(tactic| (intro p hp; simp only [$ids,*, List.mem_cons, List.not_mem_nil, or_false] at hp; rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)))

variable {σ : Type} {X : Ctx 64}

def delSig : Sig := ⟨[.fits Types.nodeU, .any, .any, .any], [.fits Types.nodeU], [], true⟩

abbrev aD (vs : List (ValueHOL 64)) (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) : Act σ :=
  actOf Types.guestC (Hooks.guestHooksR (σ := σ)) delSig brCaps vs s0 Γ0 p0

def kvD (K KL Nd Lv Res G T : BitVec 64) : List (MlS × BitVec 64) :=
  [(nm "node", Nd), (nm "key", K), (nm "klen", KL), (nm "level", Lv), (nm "top", T), (nm "res", Res),
   (nm "go", G)]

/-- The memory facts of the descent. -/
def DE (a : Act σ) (K KL Nd Lv Res T : BitVec 64) (Γ : Gam) (q : Ptrs) (M : Mem) : Prop :=
  Fits Γ Types.nodeU Nd ∧ Lv.toNat ≤ KL.toNat ∧ NIn Γ K KL ∧ Rt Γ Res ∧
    DlG a Γ q M q.sp a.p0.sp T

def JDv (a : Act σ) (K KL Nd Lv Res G T : BitVec 64) (t : State σ) : Prop :=
  GI a (LKV (kvD K KL Nd Lv Res G T)) (fun Γ q M => DE a K KL Nd Lv Res T Γ q M) t

def JDg (a : Act σ) (K KL G : BitVec 64) (t : State σ) : Prop :=
  ∃ Nd Lv Res T : BitVec 64, JDv a K KL Nd Lv Res G T t

def JD (a : Act σ) (K KL : BitVec 64) (t : State σ) : Prop :=
  ∃ G : BitVec 64, JDg a K KL G t

theorem kvD_fresh {K KL Nd Lv Res G T : BitVec 64} {x : MlS}
    (hx : x = nm "k" ∨ x = nm "seg" ∨ x = nm "sl" ∨ x = nm "pl" ∨ x = nm "fr" ∨ x = nm "fr2" ∨
      x = nm "idx" ∨ x = nm "eq" ∨ x = nm "fnode") :
    ∀ p ∈ kvD K KL Nd Lv Res G T, p.1 ≠ x := by
  intro p hp
  simp only [kvD, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hx with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)

theorem jd_res {a : Act σ} (hH : HooksLawful a.C a.H) {K KL : BitVec 64} {x : MlS}
    (hx : x = nm "k" ∨ x = nm "seg" ∨ x = nm "sl" ∨ x = nm "pl" ∨ x = nm "fr" ∨ x = nm "fr2" ∨
      x = nm "idx" ∨ x = nm "eq" ∨ x = nm "fnode")
    (o : Option (ValueHOL 64)) {t : State σ} (h : JD a K KL t) :
    JD a K KL { t with locals := t.locals.resVarEq (x, o) } := by
  obtain ⟨G, Nd, Lv, Res, T, hI⟩ := h
  exact ⟨G, Nd, Lv, Res, T, gi_locals hH _ (lkv_res' hI.1 (kvD_fresh hx) o) hI⟩

theorem de_ext {a : Act σ} {K KL Nd Lv Res T : BitVec 64} {Γ Γ' : Gam} {q q' : Ptrs}
    {M M' : Mem} (he : Ext Γ Γ') (h : DE a K KL Nd Lv Res T Γ q M)
    (hd : DlG a Γ' q' M' q'.sp a.p0.sp T) : DE a K KL Nd Lv Res T Γ' q' M' :=
  ⟨fits_ext he h.1, h.2.1, nIn_ext he h.2.2.1, rt_ext he h.2.2.2.1, hd⟩

/-- `DE` across a call. -/
theorem de_call {a : Act σ} (haC : a.C = Types.guestC) (haCb : a.Cb = Types.guestC)
    (hL0 : Layout Types.guestC a.p0 a.Γ0) (hsp0 : a.p0.sp ≤ scratchEnd) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) (hsc : ScrOld a.Γ0 Γ)
    {K KL Nd Lv Res T : BitVec 64} (h : DE a K KL Nd Lv Res T Γ q s.memory) :
    DE a K KL Nd Lv Res T Γ' q' st.memory :=
  de_ext co.ext h (dl_call haC haCb hL0 hsp0 co hsc h.2.2.2.2)

/-- A state of a larger named-locals list with `DE`-implying memory facts is a `JD` state. -/
theorem jd_of {a : Act σ} {K KL Nd Lv Res G T : BitVec 64} {kv : List (MlS × BitVec 64)}
    (hk : ∀ p ∈ kvD K KL Nd Lv Res G T, p ∈ kv) {E : Gam → Ptrs → Mem → Prop}
    (hE : ∀ Γ q M, E Γ q M → DE a K KL Nd Lv Res T Γ q M) {K' KL' : BitVec 64}
    (hK : K' = K) (hKL : KL' = KL) {t : State σ} (h : GI a (LKV kv) E t) : JD a K' KL' t := by
  subst hK hKL
  obtain ⟨hL, Γ, q, he, hh, hsc, hE'⟩ := h
  exact ⟨G, Nd, Lv, Res, T, fun p hp => hL p (hk p hp), Γ, q, he, hh, hsc, hE Γ q _ hE'⟩

theorem ndT_leaf {Γ : Gam} {Nd K0 : BitVec 64} (h : NdT Γ Nd K0) (hK : K0 = 1) :
    ∃ o ∈ Γ, o.base = Nd ∧ o.ty = Types.tNLEAF := by
  rcases h with ⟨o, ho, hb, ht, h0⟩ | ⟨o, ho, hb, ht, h0⟩ | ⟨o, ho, hb, ht, h0⟩ | ⟨o, ho, hb, ht, h0⟩
  all_goals first | exact ⟨o, ho, hb, ht⟩ | (rw [hK] at h0; cases h0)

theorem ndT_branch {Γ : Gam} {Nd K0 : BitVec 64} (h : NdT Γ Nd K0) (hK : K0 = 3) :
    ∃ o ∈ Γ, o.base = Nd ∧ o.ty = Types.tNBRANCH := by
  rcases h with ⟨o, ho, hb, ht, h0⟩ | ⟨o, ho, hb, ht, h0⟩ | ⟨o, ho, hb, ht, h0⟩ | ⟨o, ho, hb, ht, h0⟩
  all_goals first | exact ⟨o, ho, hb, ht⟩ | (rw [hK] at h0; cases h0)

end InitECandidate.Solver.MemSafe.Ins
