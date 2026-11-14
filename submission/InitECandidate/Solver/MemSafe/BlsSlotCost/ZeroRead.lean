import InitECandidate.Solver.MemSafe.PairCost.FromBeRead
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.PairCost.Read
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.ZeroRead
variable {σ : Type}
def body : ProgHOL 64 := (declPair Guest.Software.guestFn_is_zero_bytes).2.2
def parts : ExpHOL 64 × ProgHOL 64 × ProgHOL 64 :=
 match body with
 | .dec _ _ _ (.seq (.while c b) r) => (c,b,r)
 | _ => (.const 0,.skip,.skip)
def test : ExpHOL 64 := .cmp .notEqual (.loadByte (.op .add [.var .local (nm "p"),.var .local (nm "i")])) (.const 0)
theorem body_eq : body = .dec (nm "i") .one (.const 0) (.seq (.while parts.1 parts.2.1) parts.2.2) := by cbv
theorem cond_eq : parts.1 = .cmp .lower (.var .local (nm "i")) (.var .local (nm "n")) := by cbv
theorem loop_eq : parts.2.1 = .seq (.ite test (.return (.const 0)) .skip)
 (.assign .local (nm "i") (.op .add [.var .local (nm "i"),.const 1])) := by cbv
theorem loop_error {s : PanSemStateFiniteExact 64 σ} {A : BitVec 64}
 (hp : s.locals.lookup (nm "p") = some (.val (.word A)))
 (hi : s.locals.lookup (nm "i") = some (.val (.word 0)))
 (hn : ¬ Hit s.memaddrs A) : (evaluateHOLFiniteState s parts.2.1).1 = some .error := by
 have he : ev s (.op .add [.var .local (nm "p"),.var .local (nm "i")]) = some (.val (.word A)) := by
  simp [ev,evalHOLFinite,evalHOLExact,evalListHOLExact,hp,hi,wordOpHOL,wordOp,valueIsWord,valueWord]
 have hl := load_byte_none he hn
 have ht : ev s test = none := by
  dsimp only [ev] at hl ⊢
  unfold test
  rw [evalHOLExact,hl]
 have hit : evaluateHOLFiniteState s (.ite test (.return (.const 0)) .skip) = (some .error,s) := by
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  dsimp only [ev] at ht
  rw [ht]
 rw [loop_eq]
 exact congrArg Prod.fst (seq_error hit)
theorem body_abort {s : PanSemStateFiniteExact 64 σ} {A : BitVec 64}
 (hp : s.locals.lookup (nm "p") = some (.val (.word A)))
 (hn : s.locals.lookup (nm "n") = some (.val (.word 16)))
 (hno : ¬ Hit s.memaddrs A) : FromBe.Abort s body := by
 rw [body_eq]
 apply FromBe.dec_zero_abort
 apply FromBe.seq_abort
 have hc : CondTrue (setVarHOLFinite (nm "i") (.val (.word (0 : BitVec 64))) s) parts.1 := by
  refine ⟨1,?_,by decide⟩
  rw [cond_eq]
  simp (config := { decide := true }) [ev,evalHOLFinite,evalHOLExact,setVarHOLFinite,FUPDATE,hn,Compiler.Encoders.Asm.wordCmpHOL]
 apply FromBe.while_abort hc
 exact loop_error (by simpa (config := { decide := true }) [decClockHOLFinite,setVarHOLFinite,FUPDATE] using hp)
  (by simp [decClockHOLFinite,setVarHOLFinite,FUPDATE]) hno

def ReadR (vs : List (ValueHOL 64)) (s : PanSemStateFiniteExact 64 σ) (r : PanSemResultExact 64)
 (_t : PanSemStateFiniteExact 64 σ) : Prop :=
 ∀ A v, vs = [.val (.word A),.val (.word 16)] → r = .returned v → Hit s.memaddrs A
theorem read_spec : FunSpec σ guestCtx (nm "is_zero_bytes") ReadR := by
 have hc : ∃ rs, guestCode (nm "is_zero_bytes") =
  some ((declPair Guest.Software.guestFn_is_zero_bytes).2.1,body,rs) :=
  declPair_valid (List.getElem_mem (n := 19) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 have hparams : (declPair Guest.Software.guestFn_is_zero_bytes).2.1 = [(nm "p",.one),(nm "n",.one)] := by cbv
 rw [hparams] at hc
 intro vs b callee rs' hl s hs hloc r hr A v hvs hrv
 rw [guestCtx_code] at hl
 obtain ⟨rfl,-,A0,N0,rfl,hsA,hsN,hA,hN⟩ := lookupCode_two hc (by decide) hl
 simp only [List.cons.injEq,and_true] at hvs
 obtain ⟨rfl,rfl⟩ := hvs
 cases hrv
 by_contra hno
 rcases body_abort (s := s) (by rw [hloc]; exact hA) (by rw [hloc]; exact hN) hno with h | h
 all_goals rw [h] at hr; cases hr
#print axioms read_spec
end InitECandidate.Solver.MemSafe.BlsSlotCost.ZeroRead
