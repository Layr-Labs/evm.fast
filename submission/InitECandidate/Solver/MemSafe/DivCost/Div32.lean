import InitECandidate.Solver.MemSafe.DivCost.Countdown
import InitECandidate.Solver.Spec.Rlp
import InitECandidate.Solver.SourceCost.CounterLoops
import Guest.SoftwareAst
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.DivCost.Div32
variable {σ : Type} {X : Ctx 64}
theorem bit_bound (Q I : BitVec 64) (hQ : Q.toNat < 2^32) (hI : I.toNat < 32) :
 (Q ||| ((1 : BitVec 64) <<< I.toNat)).toNat < 2^32 := by
 rw [BitVec.toNat_or]
 apply Nat.or_lt_two_pow hQ
 rw [BitVec.toNat_shiftLeft]
 have hp : 2^I.toNat < 2^32 := Nat.pow_lt_pow_right (by decide) hI
 change (1 <<< I.toNat)%2^64 < 2^32
 rw [Nat.shiftLeft_eq]
 simp only [Nat.one_mul]
 exact Nat.lt_of_le_of_lt (Nat.mod_le _ _) hp

def rExp : ExpHOL 64 := .op .or [.shift .lsl (lv (nm "r")) (cw 1),
 .op .and [.shift .lsr (lv (nm "lo")) (lv (nm "i")),cw 1]]
def branch : ProgHOL 64 := .ite (.cmp .notLower (lv (nm "r")) (lv (nm "d")))
 (.seq (.assign .local (nm "r") (.op .sub [lv (nm "r"),lv (nm "d")]))
  (.assign .local (nm "q") (.op .or [lv (nm "q"),.shift .lsl (cw 1) (lv (nm "i"))]))) .skip

def iter : ProgHOL 64 := .seq (.assign .local (nm "i") (.op .sub [lv (nm "i"),cw 1]))
 (.seq (.assign .local (nm "r") rExp) branch)
def cond : ExpHOL 64 := .cmp .less (cw 0) (lv (nm "i"))
def body : ProgHOL 64 := .dec (nm "q") .one (cw 0)
 (.dec (nm "r") .one (lv (nm "hi")) (.dec (nm "i") .one (cw 32)
  (.seq (.while cond iter) (.return (.rstruct [lv (nm "q"),lv (nm "r")])))))
theorem entry : fnEntry Guest.Software.guestFn_div64by32 =
 (nm "div64by32",[(nm "hi",.one),(nm "lo",.one),(nm "d",.one)],body,.comb [.one,.one]) := by
 conv => lhs; cbv
 conv => rhs; cbv
theorem code : guestCode (nm "div64by32") = some
 ([(nm "hi",.one),(nm "lo",.one),(nm "d",.one)],body,.comb [.one,.one]) :=
 code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 63) (by decide)) ⟨_,rfl⟩ entry

def BI (s : PanSemStateFiniteExact 64 σ) : Prop := ∃ I Q : BitVec 64,
 s.locals.lookup (nm "i") = some (.val (.word I)) ∧ s.locals.lookup (nm "q") = some (.val (.word Q)) ∧
 I.toNat ≤ 32 ∧ Q.toNat < 2^32
def BS (s : PanSemStateFiniteExact 64 σ) : Prop := ∃ I Q : BitVec 64,
 s.locals.lookup (nm "i") = some (.val (.word I)) ∧ s.locals.lookup (nm "q") = some (.val (.word Q)) ∧
 I.toNat < 32 ∧ Q.toNat < 2^32

theorem branch_bound : Hoare σ X BS branch (fun r t => r=none ∧ BI t) := by
 unfold branch
 refine InitECandidate.Solver.Spec.hoare_ite ?_ ?_
 · refine InitECandidate.Solver.Spec.hoare_seq (R := fun r t => r=none ∧ BS t) ?_
    (fun _ _ _ hr _ h => False.elim (hr h.1)) ?_
   · refine InitECandidate.Solver.Spec.hoare_assign fun s hs ⟨hp,hc⟩ v hv hvalid => ?_
     obtain ⟨I,Q,hi,hq,hI,hQ⟩ := hp
     exact ⟨rfl,I,Q,by rw [lk_set_ne _ _ (by decide)];exact hi,
      by rw [lk_set_ne _ _ (by decide)];exact hq,hI,hQ⟩
   · refine InitECandidate.Solver.Spec.hoare_assign fun s hs ⟨_,I,Q,hi,hq,hI,hQ⟩ v hv hvalid => ?_
     have hshift : ev s (.shift .lsl (cw 1) (lv (nm "i"))) =
       some (.val (.word ((1 : BitVec 64) <<< I.toNat))) := by
      rw [ev_shift (ev_cw _ 1) (ev_lw hi)]
      simp only [wordShiftHOL]
      rw [if_neg (by omega)]
      rfl
     rw [ev_or2 (ev_lw hq) hshift] at hv
     cases hv
     exact ⟨rfl,I,_,by rw [lk_set_ne _ _ (by decide)];exact hi,
      lk_set_self _ _ _,by omega,bit_bound Q I hQ hI⟩
 · refine InitECandidate.Solver.Spec.hoare_skip fun s hs ⟨hp,hc⟩ => ?_
   obtain ⟨I,Q,hi,hq,hI,hQ⟩ := hp
   exact ⟨rfl,I,Q,hi,hq,by omega,hQ⟩

theorem iter_bound : Hoare σ X (fun s => BI s ∧ CondTrue s cond) iter
 (fun r t => r=none ∧ BI t) := by
 unfold iter
 refine InitECandidate.Solver.Spec.hoare_seq (R := fun r t => r=none ∧ BS t) ?_
  (fun _ _ _ hr _ h => False.elim (hr h.1)) ?_
 · refine InitECandidate.Solver.Spec.hoare_assign fun s hs ⟨hp,hc⟩ v hv hvalid => ?_
   obtain ⟨I,Q,hi,hq,hI,hQ⟩ := hp
   obtain ⟨V,hV,hV0⟩ := countdown_cond hc
   have hEq : I=V := by
    rw [hi] at hV
    simpa only [Option.some.injEq,ValueHOL.val.injEq,HolWordLab.word.injEq] using hV
   have hI0 : I≠0 := fun h => hV0 (hEq.symm.trans h)
   have hIn : I.toNat≠0 := fun h => hI0 (BitVec.eq_of_toNat_eq (by simpa using h))
   have hI1 : (1 : BitVec 64)≤I := by
    rw [BitVec.le_def]
    change 1≤I.toNat
    omega
   rw [ev_sub2 (ev_lw hi) (ev_cw _ 1)] at hv
   cases hv
   refine ⟨rfl,I-1,Q,lk_set_self _ _ _,?_,?_,hQ⟩
   · rw [lk_set_ne _ _ (by decide)];exact hq
   · rw [BitVec.toNat_sub_of_le hI1]
     change I.toNat-1<32
     omega
 · refine InitECandidate.Solver.Spec.hoare_seq (R := fun r t => r=none ∧ BS t) ?_
    (fun _ _ _ hr _ h => False.elim (hr h.1)) ?_
   · refine InitECandidate.Solver.Spec.hoare_assign fun s hs ⟨_,I,Q,hi,hq,hI,hQ⟩ v hv hvalid => ?_
     exact ⟨rfl,I,Q,by rw [lk_set_ne _ _ (by decide)];exact hi,
      by rw [lk_set_ne _ _ (by decide)];exact hq,hI,hQ⟩
   · exact hoare_pre branch_bound (fun _ _ h => h.2)

theorem loop_bound : Hoare σ X BI (.while cond iter) (fun r t => r=none ∧ BI t) := by
 refine hoare_while (fun _ h => h) (hoare_post iter_bound ?_) (fun _ _ h _ => ⟨rfl,h⟩)
 intro r t ht htracked ⟨hr,hI⟩
 subst r
 exact ⟨fun _ => hI,by simp,by simp,by simp⟩

def BR (v : ValueHOL 64) : Prop := ∃ Q : BitVec 64, ∃ R : ValueHOL 64,
 v=.rStruct [.val (.word Q),R] ∧ Q.toNat<2^32

theorem body_bound : Hoare σ X (fun _ => True) body (fun r _ => ∀ v, r=some (.returned v) → BR v) := by
 unfold body
 refine hoare_dec fun s hs hp v hv hshape => ?_
 rw [ev_cw] at hv
 cases hv
 refine hoare_dec fun s1 hs1 he1 v1 hv1 hshape1 => ?_
 subst s1
 refine hoare_dec fun s2 hs2 he2 v2 hv2 hshape2 => ?_
 subst s2
 rw [ev_cw] at hv2
 cases hv2
 refine InitECandidate.Solver.Spec.hoare_seq (R := fun r t => r=none ∧ BI t) ?_
  (fun _ _ _ hr _ h => False.elim (hr h.1)) ?_
 · refine hoare_pre loop_bound ?_
   intro t ht he
   subst t
   refine ⟨32,0,lk_set_self _ _ _,?_,by decide,by decide⟩
   rw [lk_set_ne _ _ (by decide),lk_set_ne _ _ (by decide),lk_set_self]
   rfl
 · refine hoare_return fun t ht ⟨_,I,Q,hi,hq,hI,hQ⟩ v hv => ?_
   obtain ⟨vs,rfl,hvs⟩ := ev_rstruct_inv hv
   obtain ⟨A,vs1,rfl,hA,h1⟩ := evs_cons_inv hvs
   rw [ev_lw hq] at hA
   cases hA
   obtain ⟨R,vs2,rfl,hR,h2⟩ := evs_cons_inv h1
   change some []=some vs2 at h2
   have hn : vs2=[] := Option.some.inj h2.symm
   subst vs2
   intro w hw
   cases hw
   exact ⟨Q,R,rfl,hQ⟩
theorem lookup_body {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {ps : List (MlS × ShapeHOL)} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some (ps, bd, rsh))
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL}
    (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, -, -⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · simp only [Option.some.injEq, Prod.mk.injEq] at hx
      exact hx.1.symm
    · simp at hx


theorem funSpec_div64by32 (hC : X.code.lookup=guestCode) :
 FunSpec σ X (nm "div64by32") (fun _ _ r _ => ∀ v, r=.returned v → BR v) := by
 intro vs bd callee rs hl s0 hs hloc r hr v hv
 subst r
 rw [hC] at hl
 obtain rfl := lookup_body code hl
 have hh := body_bound s0 hs trivial (by rw [hr];trivial)
 rw [hr] at hh
 exact hh _ rfl

def rest : ProgHOL 64 := .seq (.assign .local (nm "r") rExp) branch
theorem rest_cost : Cost σ X rest 0 := by
 unfold rest branch
 exact cost_seq (cost_assign .local (nm "r") rExp)
  (cost_ite (cost_seq (cost_assign _ _ _) (cost_assign _ _ _)) cost_skip)
theorem rest_keeps : Keeps σ (nm "i") rest := by
 apply keepsB_sound
 decide_cbv

theorem body_cost : Cost σ X body 33 := by
 apply Inv.cost_of_costP_true
 unfold body
 refine Inv.costP_dec fun s hs hp v hv hshape => ?_
 refine Inv.costP_dec fun s1 hs1 hp1 v1 hv1 hshape1 => ?_
 refine Inv.costP_dec fun s2 hs2 hp2 v2 hv2 hshape2 => ?_
 rw [ev_cw] at hv2
 cases hv2
 have hloop : Inv.CostP σ X (fun t => InitECandidate.Solver.SourceCost.wordOf t (nm "i")≤32)
  (.while cond iter) 33 := InitECandidate.Solver.MemSafe.DivCost.Countdown.bounded (M := 32) rest_cost rest_keeps
 have hseq := Inv.costP_seq (R := fun _ => True) hloop (fun _ _ _ _ _ => trivial)
  (Inv.costP_of_cost (cost_return (.rstruct [lv (nm "q"),lv (nm "r")])))
 apply hseq.pre
 intro t ht he
 subst t
 unfold InitECandidate.Solver.SourceCost.wordOf
 rw [lk_set_self]
 decide

theorem callee_cost (hC : X.code.lookup=guestCode) : CalleeCost σ X (nm "div64by32") 33 := by
 intro vs bd callee rs hl
 rw [hC] at hl
 obtain rfl := lookup_body code hl
 exact body_cost
#print axioms bit_bound
#print axioms funSpec_div64by32
#print axioms body_cost
#print axioms callee_cost
end InitECandidate.Solver.MemSafe.DivCost.Div32
