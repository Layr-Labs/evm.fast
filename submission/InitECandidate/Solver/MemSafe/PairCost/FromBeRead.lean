import InitECandidate.Solver.MemSafe.PairCost.ReadFailFlow
import InitECandidate.Solver.Spec.HoareExt
import InitECandidate.Solver.Spec.Exec
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.PairCost.Read.FromBe
variable {σ : Type}
def body : ProgHOL 64 := (declPair Guest.Software.guestFn_u256_from_be).2.2
def pieces : ExpHOL 64 × ProgHOL 64 × ProgHOL 64 :=
  match body with
  | .seq (.ite c a .skip) b => (c,a,b)
  | _ => (.const 0,.skip,.skip)
def slowPieces : ProgHOL 64 × ProgHOL 64 :=
  match pieces.2.2 with
  | .dec _ _ _ (.dec _ _ _ (.dec _ _ _ (.dec _ _ _ (.dec _ _ _ (.seq (.while _ b) r))))) => (b,r)
  | _ => (.skip,.skip)
def loopBody := slowPieces.1
def loopRest : ProgHOL 64 :=
  match loopBody with
  | .dec _ _ _ (.dec _ _ _ r) => r
  | _ => .skip
def byteExp : ExpHOL 64 :=
  match loopBody with
  | .dec _ _ _ (.dec _ _ e _) => e
  | _ => .const 0
theorem loop_eq : loopBody = .dec (nm "pos") .one
    (.op .sub [.op .sub [.var .local (nm "n"),.const 1],.var .local (nm "i")])
    (.dec (nm "byte") .one byteExp loopRest) := by cbv

theorem byte_eq : byteExp = (.shift .lsl (.loadByte (.op .add [.var .local (nm "p"),.var .local (nm "i")]))
    (.panop .mul [.op .and [.var .local (nm "pos"),.const 7],.const 8])) := by cbv

theorem byte_none {s : PanSemStateFiniteExact 64 σ} {A : BitVec 64}
    (hp : s.locals.lookup (nm "p") = some (.val (.word A)))
    (hi : s.locals.lookup (nm "i") = some (.val (.word 0)))
    (hn : ¬ Hit s.memaddrs A) : ev s byteExp = none := by
  have he : ev s (.op .add [.var .local (nm "p"),.var .local (nm "i")]) = some (.val (.word A)) := by
    simp [ev,evalHOLFinite,evalHOLExact,evalListHOLExact,hp,hi,wordOpHOL,wordOp,valueIsWord,valueWord]
  have hl := load_byte_none he hn
  rw [byte_eq]
  dsimp only [ev] at hl ⊢
  rw [evalHOLExact,hl]

theorem loop_error {s : PanSemStateFiniteExact 64 σ} {A : BitVec 64}
    (hp : s.locals.lookup (nm "p") = some (.val (.word A)))
    (hi : s.locals.lookup (nm "i") = some (.val (.word 0)))
    (hn : s.locals.lookup (nm "n") = some (.val (.word 32)))
    (hno : ¬ Hit s.memaddrs A) : (evaluateHOLFiniteState s loopBody).1 = some .error := by
  have hpos : ev s (.op .sub [.op .sub [.var .local (nm "n"),.const 1],.var .local (nm "i")]) =
      some (.val (.word (31 : BitVec 64))) := by
    simp [ev,evalHOLExact,evalListHOLExact,hn,hi,wordOpHOL,wordOp,valueIsWord,valueWord]
  rw [loop_eq,dec_word_result hpos]
  have hb := byte_none (s := setVarHOLFinite (nm "pos") (.val (.word (31 : BitVec 64))) s)
    (A := A) (by simpa (config := { decide := true }) [setVarHOLFinite,FUPDATE] using hp)
    (by simpa (config := { decide := true }) [setVarHOLFinite,FUPDATE] using hi) hno
  exact congrArg Prod.fst (dec_fail hb)
theorem while_abort {s : PanSemStateFiniteExact 64 σ} {c : ExpHOL 64} {b : ProgHOL 64}
    (hc : CondTrue s c)
    (hb : (evaluateHOLFiniteState (decClockHOLFinite s) b).1 = some .error) :
    (evaluateHOLFiniteState s (.while c b)).1 = some .error ∨
    (evaluateHOLFiniteState s (.while c b)).1 = some .timeOut := by
  obtain ⟨w,he,hne⟩ := hc
  rw [evaluateHOLFiniteState_while_total]
  change ev s c = some (.val (.word w)) at he
  dsimp only [ev] at he
  simp only [evalHOLFinite,he]
  split
  · split
    · exact Or.inr rfl
    · rw [hb]
      exact Or.inl rfl
  · rename_i hfalse
    exact False.elim (hfalse hne)
def Abort (s : PanSemStateFiniteExact 64 σ) (p : ProgHOL 64) : Prop :=
  (evaluateHOLFiniteState s p).1 = some .error ∨ (evaluateHOLFiniteState s p).1 = some .timeOut

theorem seq_abort {s : PanSemStateFiniteExact 64 σ} {a b : ProgHOL 64} (ha : Abort s a) :
    Abort s (.seq a b) := by
  unfold Abort at ha ⊢
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  rcases ha with ha | ha
  · rw [ha]; exact Or.inl ha
  · rw [ha]; exact Or.inr ha

theorem dec_zero_abort {s : PanSemStateFiniteExact 64 σ} {n : MlS} {b : ProgHOL 64}
    (hb : Abort (setVarHOLFinite n (.val (.word (0 : BitVec 64))) s) b) :
    Abort s (.dec n .one (.const 0) b) := by
  unfold Abort at hb ⊢
  rwa [dec_word_result (ev_const _)]

def cond : ExpHOL 64 := .cmp .lower (.var .local (nm "i")) (.var .local (nm "n"))
def slowTail : ProgHOL 64 := .seq (.while cond loopBody) slowPieces.2
theorem slow_eq : pieces.2.2 =
    .dec (nm "l0") .one (.const 0) (.dec (nm "l1") .one (.const 0)
    (.dec (nm "l2") .one (.const 0) (.dec (nm "l3") .one (.const 0)
    (.dec (nm "i") .one (.const 0) slowTail)))) := by cbv

theorem tail_abort {s : PanSemStateFiniteExact 64 σ} {A : BitVec 64}
    (hp : s.locals.lookup (nm "p") = some (.val (.word A)))
    (hi : s.locals.lookup (nm "i") = some (.val (.word 0)))
    (hn : s.locals.lookup (nm "n") = some (.val (.word 32)))
    (hno : ¬ Hit s.memaddrs A) : Abort s slowTail := by
  apply seq_abort
  have hc : CondTrue s cond := by
    refine ⟨1,?_,by decide⟩
    simp [cond,ev,evalHOLExact,hi,hn,Compiler.Encoders.Asm.wordCmpHOL]
  exact while_abort hc (loop_error hp hi hn hno)

theorem slow_abort {s : PanSemStateFiniteExact 64 σ} {A : BitVec 64}
    (hp : s.locals.lookup (nm "p") = some (.val (.word A)))
    (hn : s.locals.lookup (nm "n") = some (.val (.word 32)))
    (hno : ¬ Hit s.memaddrs A) : Abort s pieces.2.2 := by
  rw [slow_eq]
  apply dec_zero_abort
  apply dec_zero_abort
  apply dec_zero_abort
  apply dec_zero_abort
  apply dec_zero_abort
  exact tail_abort (by simpa (config := { decide := true }) [setVarHOLFinite,FUPDATE] using hp)
    (by simp [setVarHOLFinite,FUPDATE])
    (by simpa (config := { decide := true }) [setVarHOLFinite,FUPDATE] using hn) hno
def fastRest : ProgHOL 64 :=
  match pieces.2.1 with
  | .dec _ _ _ r => r
  | _ => .skip
theorem fast_eq : pieces.2.1 = .dec (nm "w") .one (.load .one (.var .local (nm "p"))) fastRest := by cbv
theorem body_eq : body = .seq (.ite pieces.1 pieces.2.1 .skip) pieces.2.2 := by cbv

theorem fast_error {s : PanSemStateFiniteExact 64 σ} {A : BitVec 64}
    (hp : s.locals.lookup (nm "p") = some (.val (.word A)))
    (hno : ¬ Hit s.memaddrs A) : evaluateHOLFiniteState s pieces.2.1 = (some .error,s) := by
  rw [fast_eq]
  exact dec_fail (load_one_none hp hno)

theorem body_abort {s : PanSemStateFiniteExact 64 σ} {A : BitVec 64}
    (hp : s.locals.lookup (nm "p") = some (.val (.word A)))
    (hn : s.locals.lookup (nm "n") = some (.val (.word 32)))
    (hno : ¬ Hit s.memaddrs A) : Abort s body := by
  have hf := ite_error_or_skip (c := pieces.1) (fast_error hp hno)
  rw [body_eq]
  rcases hf with hf | hf
  · exact Or.inl (congrArg Prod.fst (seq_error hf))
  · unfold Abort
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq _ _)]
    dsimp only
    rw [hf]
    exact slow_abort hp hn hno

theorem returned_hit {s : PanSemStateFiniteExact 64 σ} {A : BitVec 64} {v : ValueHOL 64}
    (hp : s.locals.lookup (nm "p") = some (.val (.word A)))
    (hn : s.locals.lookup (nm "n") = some (.val (.word 32)))
    (hr : (evaluateHOLFiniteState s body).1 = some (.returned v)) : Hit s.memaddrs A := by
  by_contra hno
  rcases body_abort hp hn hno with h | h
  all_goals rw [h] at hr; cases hr
def ReadR (vs : List (ValueHOL 64)) (s : PanSemStateFiniteExact 64 σ) (r : PanSemResultExact 64)
    (_t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∀ A v, vs = [.val (.word A),.val (.word 32)] → r = .returned v → Hit s.memaddrs A

theorem read_spec : FunSpec σ guestCtx (nm "u256_from_be") ReadR := by
  have hc : ∃ rs, guestCode (nm "u256_from_be") =
      some ((declPair Guest.Software.guestFn_u256_from_be).2.1,body,rs) :=
    declPair_valid (List.getElem_mem (n := 86) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  have hparams : (declPair Guest.Software.guestFn_u256_from_be).2.1 = [(nm "p",.one),(nm "n",.one)] := by cbv
  rw [hparams] at hc
  intro vs b callee rs' hl s hs hloc r hr A v hvs hrv
  rw [guestCtx_code] at hl
  obtain ⟨rfl,-,A0,N0,rfl,hsA,hsN,hA,hN⟩ := lookupCode_two hc (by decide) hl
  simp only [List.cons.injEq,and_true] at hvs
  obtain ⟨rfl,rfl⟩ := hvs
  cases hrv
  apply returned_hit (s := s) (v := v) (by rw [hloc]; exact hA) (by rw [hloc]; exact hN) hr
#print axioms read_spec
#print axioms returned_hit
#print axioms slow_abort
#print axioms byte_none
#print axioms loop_error
end InitECandidate.Solver.MemSafe.PairCost.Read.FromBe
