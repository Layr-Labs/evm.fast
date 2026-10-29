import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data64
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate48
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody64_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody64_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.const 1#64),
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "lo")
            (Flapjack.Exp.var Flapjack.VarKind.local "i"),
          Flapjack.Exp.const 1#64]])

def globalBody64_2 : Prog (BitVec 64) :=
.seq globalBody64_0 globalBody64_1

def globalBody64_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "d"])

def globalBody64_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "q"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")])

def globalBody64_5 : Prog (BitVec 64) :=
.seq globalBody64_3 globalBody64_4

def globalBody64_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody64_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "r")
  (Flapjack.Exp.var Flapjack.VarKind.local "d")) globalBody64_5 globalBody64_6

def globalBody64_8 : Prog (BitVec 64) :=
.seq globalBody64_2 globalBody64_7

def globalBody64_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody64_8

def globalBody64_10 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "r"])

def globalBody64_11 : Prog (BitVec 64) :=
.seq globalBody64_9 globalBody64_10

def globalBody64_12 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 32#64) globalBody64_11

def globalBody64_13 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "hi") globalBody64_12

def globalBody64_14 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody64_13

def globalData64 : Decl (BitVec 64) :=
.function { name := "div64by32", inline := false, exported := false, params := [("hi", Flapjack.Shape.one), ("lo", Flapjack.Shape.one), ("d", Flapjack.Shape.one)], body := globalBody64_14, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput64 := Pancake.PanLang.declToHOL globalData64
end InitECandidate.Proofs.FrontendStages.Declarations
