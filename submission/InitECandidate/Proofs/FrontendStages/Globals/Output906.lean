import InitECandidate.Proofs.FrontendStages.Declarations.Data906
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody906_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ovf" (Flapjack.Exp.const 1#64)

def globalBody906_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody906_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "p"),
      Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "p"),
      Flapjack.Exp.rField 6 (Flapjack.Exp.var Flapjack.VarKind.local "p"),
      Flapjack.Exp.rField 7 (Flapjack.Exp.var Flapjack.VarKind.local "p")])
  (Flapjack.Exp.const 0#64)) globalBody906_0 globalBody906_1

def globalBody906_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "ovf", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "p"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "p")])

def globalBody906_4 : Prog (BitVec 64) :=
.seq globalBody906_2 globalBody906_3

def globalBody906_5 : Prog (BitVec 64) :=
.dec ("ovf") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody906_4

def globalBody906_6 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mul_full") ([Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 0#64],
  Flapjack.Exp.var Flapjack.VarKind.local "price"]) globalBody906_5

def globalData906 : Decl (BitVec 64) :=
.function { name := "fee_mul", inline := false, exported := false, params := [("gas", Flapjack.Shape.one),
  ("price", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody906_6, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput906 := Pancake.PanLang.declToHOL globalData906
end InitECandidate.Proofs.FrontendStages.Declarations
