import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data30
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate14
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody30_0 : Prog (BitVec 64) :=
Flapjack.Prog.shMemLoad Flapjack.OpSize.opW Flapjack.VarKind.local "len" (Flapjack.Exp.const 1073741832#64)

def globalBody30_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "trap_with" [Flapjack.Exp.const 8#64]

def globalBody30_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody30_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1073741808#64) (Flapjack.Exp.var Flapjack.VarKind.local "len")) globalBody30_1 globalBody30_2

def globalBody30_4 : Prog (BitVec 64) :=
.seq globalBody30_0 globalBody30_3

def globalBody30_5 : Prog (BitVec 64) :=
Flapjack.Prog.shMemLoad Flapjack.OpSize.opW Flapjack.VarKind.local "w"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1073741840#64, Flapjack.Exp.var Flapjack.VarKind.local "i"])

def globalBody30_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody30_7 : Prog (BitVec 64) :=
.seq globalBody30_5 globalBody30_6

def globalBody30_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])

def globalBody30_9 : Prog (BitVec 64) :=
.seq globalBody30_7 globalBody30_8

def globalBody30_10 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "len")) globalBody30_9

def globalBody30_11 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"])

def globalBody30_12 : Prog (BitVec 64) :=
.seq globalBody30_10 globalBody30_11

def globalBody30_13 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody30_12

def globalBody30_14 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody30_13

def globalBody30_15 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 8#64]]) globalBody30_14

def globalBody30_16 : Prog (BitVec 64) :=
.seq globalBody30_4 globalBody30_15

def globalBody30_17 : Prog (BitVec 64) :=
.dec ("len") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody30_16

def globalData30 : Decl (BitVec 64) :=
.function { name := "input_blob", inline := false, exported := false, params := [], body := globalBody30_17, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput30 := Pancake.PanLang.declToHOL globalData30
end InitECandidate.Proofs.FrontendStages.Declarations
