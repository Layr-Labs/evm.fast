import InitECandidate.Solver.MemSafe.ConstCost.Prim.C14
import InitECandidate.Solver.MemSafe.CryptoCost.Countdown
import InitECandidate.Solver.MemSafe.Entry
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Pow44
variable {σ : Type}
def body : ProgHOL 64 := (declPair Guest.Software.guestFn_fq12_pow_words).2.2
def pieces : ProgHOL 64 × ProgHOL 64 × ProgHOL 64 :=
 match body with
 | .seq first (.dec _ _ _ (.dec _ _ _ (.seq (.while _ (.seq _ rest)) tail))) => (first,rest,tail)
 | _ => (.skip,.skip,.skip)
def initExp : ExpHOL 64 := .panop .mul [.var .local (nm "nw"),.const 64]
def loop : ProgHOL 64 := .while (.cmp .lower (.const 0) (.var .local (nm "i")))
 (.seq (.assign .local (nm "i") (.op .sub [.var .local (nm "i"),.const 1])) pieces.2.1)
theorem body_eq : body = .seq pieces.1 (.dec (nm "started") .one (.const 0)
 (.dec (nm "i") .one initExp (.seq loop pieces.2.2))) := by cbv
def firstB : Nat := 137438953510
def restB : Nat := 12250165209153784693572816511346537399118
def loopB : Nat := 2817*(restB+1)
def bound : Nat := firstB+loopB
def NW44 (s : PanSemStateFiniteExact 64 σ) : Prop := s.locals.lookup (nm "nw") = some (.val (.word 44))
theorem body_cost44 : Inv.CostP σ guestCtx NW44 body bound := by
 have hf : Cost σ guestCtx pieces.1 firstB := ConstCost.Core.analyze_sound ConstCost.Prim.table14_sound (by cbv)
 have hr : Cost σ guestCtx pieces.2.1 restB := ConstCost.Core.analyze_sound ConstCost.Prim.table14_sound (by cbv)
 have ht : Cost σ guestCtx pieces.2.2 0 := ConstCost.Core.analyze_sound ConstCost.Prim.table14_sound (by cbv)
 have hkeep : Keeps σ (nm "nw") pieces.1 := keepsB_sound _ _ (by cbv)
 have hi : Keeps σ (nm "i") pieces.2.1 := keepsB_sound _ _ (by cbv)
 have hl := CryptoCost.Countdown.bounded (M := 2816) hr hi
 have hsuf := Inv.costP_seq (R := fun _ => True) hl (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost ht)
 rw [body_eq]
 refine Inv.costP_seq (R := NW44) (Inv.costP_of_cost hf) ?_ ?_
 · intro s hs hp htr hn
   exact (hkeep s (Or.inl hn)).trans hp
 · refine Inv.costP_dec ?_
   intro s hs hp v hv hsh
   change some (.val (.word (0 : BitVec 64))) = some v at hv
   cases hv
   refine Inv.costP_dec ?_
   intro t ht heq w hw hshape
   subst t
   have hN : (setVarHOLFinite (nm "started") (.val (.word (0 : BitVec 64))) s).locals.lookup (nm "nw") = some (.val (.word 44)) := by
    simpa (config := { decide := true }) [NW44,setVarHOLFinite,FUPDATE] using hp
   have hev : ev (setVarHOLFinite (nm "started") (.val (.word (0 : BitVec 64))) s) initExp = some (.val (.word 2816)) := by
    have ha : evs (setVarHOLFinite (nm "started") (.val (.word (0 : BitVec 64))) s)
      [.var .local (nm "nw"),.const 64] = some [.val (.word 44),.val (.word 64)] :=
     evs_cons hN (evs_cons (ev_cw _ 64) evs_nil)
    unfold initExp
    dsimp only [ev]
    rw [evalHOLExact]
    dsimp only [evs] at ha
    rw [ha] <;> rfl
   rw [hev] at hw
   cases hw
   exact hsuf.pre (fun u hu hueq => by
    subst u
    simp [InitECandidate.Solver.SourceCost.wordOf,setVarHOLFinite,FUPDATE])

def Arg44 (vs : List (ValueHOL 64)) (_s : PanSemStateFiniteExact 64 σ) : Prop := vs[3]? = some (.val (.word 44))
theorem callee44 : Inv.CalleeCostP σ guestCtx (nm "fq12_pow_words") Arg44 bound := by
 have hc : ∃ rs, guestCode (nm "fq12_pow_words") = some ((declPair Guest.Software.guestFn_fq12_pow_words).2.1,body,rs) :=
  declPair_valid (List.getElem_mem (n := 683) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 have hp : (declPair Guest.Software.guestFn_fq12_pow_words).2.1 = [(nm "d",.one),(nm "a",.one),(nm "ew",.one),(nm "nw",.one)] := by cbv
 rw [hp] at hc
 intro vs bd callee rs' hl
 rw [guestCtx_code] at hl
 obtain ⟨rfl,-,hlen,hbind⟩ := lookupCode_gen hc hl
 apply body_cost44.pre
 intro s hs ⟨hloc,hP⟩
 have hi : 3 < vs.length := by simp only [List.length_cons,List.length_nil] at hlen; omega
 have harg : vs[3] = .val (.word 44) := by
  simpa only [Arg44,List.getElem?_eq_getElem hi,Option.some.injEq] using hP
 have hN := (hbind 3 (by decide) hi).1
 change callee.lookup (nm "nw") = some vs[3] at hN
 change NW44 s
 unfold NW44
 rw [hloc,hN,harg]

theorem call44 {info : Option (Option (Flapjack.VarKind × MlS) × Option (MlS × MlS × ProgHOL 64))}
 {d a ew : ExpHOL 64}
 (hh : ∀ r hid hv hp, info = some (r,some (hid,hv,hp)) → Cost σ guestCtx hp 0) :
 Cost σ guestCtx (.call info (nm "fq12_pow_words") [d,a,ew,.const 44]) (1+bound+0) := by
 apply Inv.cost_of_costP_true
 refine Inv.costP_call callee44 ?_ hh
 intro s hs hp vs hvs callee
 obtain ⟨v0,t0,rfl,h0,ht0⟩ := evs_cons_inv hvs
 obtain ⟨v1,t1,rfl,h1,ht1⟩ := evs_cons_inv ht0
 obtain ⟨v2,t2,rfl,h2,ht2⟩ := evs_cons_inv ht1
 obtain ⟨v3,t3,rfl,h3,ht3⟩ := evs_cons_inv ht2
 change some (.val (.word (44 : BitVec 64))) = some v3 at h3
 cases h3
 rfl
#print axioms callee44
#print axioms call44

def callB (f : MlS) (args : List (ExpHOL 64)) : Bool :=
 match args with
 | [d,a,ew,.const n] => decide (f = nm "fq12_pow_words" ∧ n = 44)
 | _ => false
theorem callB_sound {info : Option (Option (Flapjack.VarKind × MlS) × Option (MlS × MlS × ProgHOL 64))}
 {f : MlS} {args : List (ExpHOL 64)} (h : callB f args = true)
 (hh : ∀ r hid hv hp, info = some (r,some (hid,hv,hp)) → Cost σ guestCtx hp 0) :
 Cost σ guestCtx (.call info f args) (1+bound+0) := by
 unfold callB at h
 split at h
 · rename_i d a ew n
   obtain ⟨hf,hn⟩ := of_decide_eq_true h
   subst f; subst n
   exact call44 hh
 · contradiction
#print axioms callB_sound
end InitECandidate.Solver.MemSafe.BlsSlotCost.Pow44
