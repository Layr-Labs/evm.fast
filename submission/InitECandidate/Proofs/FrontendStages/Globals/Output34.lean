import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data34
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate18
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody34_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "trap_with" [Flapjack.Exp.const 2#64]

def globalBody34_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody34_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "b") (Flapjack.Exp.const 0#64)) globalBody34_0 globalBody34_1

def globalBody34_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "a"])

def globalBody34_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "a")
  (Flapjack.Exp.var Flapjack.VarKind.local "b")) globalBody34_3 globalBody34_1

def globalBody34_5 : Prog (BitVec 64) :=
.seq globalBody34_2 globalBody34_4

def globalBody34_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody34_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.const 1#64),
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
            (Flapjack.Exp.var Flapjack.VarKind.local "i"),
          Flapjack.Exp.const 1#64]])

def globalBody34_8 : Prog (BitVec 64) :=
.seq globalBody34_6 globalBody34_7

def globalBody34_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "b"])

def globalBody34_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "q"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")])

def globalBody34_11 : Prog (BitVec 64) :=
.seq globalBody34_9 globalBody34_10

def globalBody34_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "r")
  (Flapjack.Exp.var Flapjack.VarKind.local "b")) globalBody34_11 globalBody34_1

def globalBody34_13 : Prog (BitVec 64) :=
.seq globalBody34_8 globalBody34_12

def globalBody34_14 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody34_13

def globalBody34_15 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "r"])

def globalBody34_16 : Prog (BitVec 64) :=
.seq globalBody34_14 globalBody34_15

def globalBody34_17 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 64#64) globalBody34_16

def globalBody34_18 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody34_17

def globalBody34_19 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody34_18

def globalBody34_20 : Prog (BitVec 64) :=
.seq globalBody34_5 globalBody34_19

def globalData34 : Decl (BitVec 64) :=
.function { name := "udivmod", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := globalBody34_20, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput34 := Pancake.PanLang.declToHOL globalData34
end InitECandidate.Proofs.FrontendStages.Declarations
