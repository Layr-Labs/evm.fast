import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify14
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body30_0 : Prog (BitVec 64) :=
Flapjack.Prog.shMemLoad Flapjack.OpSize.opW Flapjack.VarKind.local "len" (Flapjack.Exp.const 1073741832#64)

def body30_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "trap_with" [Flapjack.Exp.const 8#64]

def body30_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body30_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1073741808#64) (Flapjack.Exp.var Flapjack.VarKind.local "len")) body30_1 body30_2

def body30_4 : Prog (BitVec 64) :=
Flapjack.Prog.shMemLoad Flapjack.OpSize.opW Flapjack.VarKind.local "w"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1073741840#64, Flapjack.Exp.var Flapjack.VarKind.local "i"])

def body30_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body30_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])

def body30_7 : Prog (BitVec 64) :=
.seq body30_5 body30_6

def body30_8 : Prog (BitVec 64) :=
.seq body30_4 body30_7

def body30_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "len")) body30_8

def body30_10 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"])

def body30_11 : Prog (BitVec 64) :=
.seq body30_9 body30_10

def body30_12 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body30_11

def body30_13 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body30_12

def body30_14 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 8#64]]) body30_13

def body30_15 : Prog (BitVec 64) :=
.seq body30_3 body30_14

def body30_16 : Prog (BitVec 64) :=
.seq body30_0 body30_15

def body30_17 : Prog (BitVec 64) :=
.dec ("len") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body30_16

def body30_18 : Prog (BitVec 64) :=
.seq body30_0 body30_3

def body30_19 : Prog (BitVec 64) :=
.seq body30_4 body30_5

def body30_20 : Prog (BitVec 64) :=
.seq body30_19 body30_6

def body30_21 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "len")) body30_20

def body30_22 : Prog (BitVec 64) :=
.seq body30_21 body30_10

def body30_23 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body30_22

def body30_24 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body30_23

def body30_25 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 8#64]]) body30_24

def body30_26 : Prog (BitVec 64) :=
.seq body30_18 body30_25

def body30_27 : Prog (BitVec 64) :=
.dec ("len") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body30_26

def originalData30 : Decl (BitVec 64) :=
.function { name := "input_blob", inline := false, exported := false, params := [], body := body30_17, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData30 : Decl (BitVec 64) :=
.function { name := "input_blob", inline := false, exported := false, params := [], body := body30_27, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original30 := Pancake.PanLang.declToHOL originalData30
def simplified30 := Pancake.PanLang.declToHOL simplifiedData30
end InitECandidate.Proofs.FrontendStages.Declarations
