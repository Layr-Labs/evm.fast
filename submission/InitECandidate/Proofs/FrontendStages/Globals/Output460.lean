import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data460
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate444
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody460_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def globalBody460_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody460_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 18446744073709551615#64)) globalBody460_0 globalBody460_1

def globalBody460_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "saved",
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")])

def globalBody460_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "saved")

def globalBody460_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "b")

def globalBody460_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.const 18446744073709551615#64)) globalBody460_5 globalBody460_1

def globalBody460_7 : Prog (BitVec 64) :=
.seq globalBody460_4 globalBody460_6

def globalBody460_8 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
          Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")],
      Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
          Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]])

def globalBody460_9 : Prog (BitVec 64) :=
.seq globalBody460_7 globalBody460_8

def globalBody460_10 : Prog (BitVec 64) :=
.decCall ("b") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "s2", Flapjack.Exp.var Flapjack.VarKind.local "n2"]) globalBody460_9

def globalBody460_11 : Prog (BitVec 64) :=
.seq globalBody460_3 globalBody460_10

def globalBody460_12 : Prog (BitVec 64) :=
.dec ("saved") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 32#64])) globalBody460_11

def globalBody460_13 : Prog (BitVec 64) :=
.seq globalBody460_2 globalBody460_12

def globalBody460_14 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "s1", Flapjack.Exp.var Flapjack.VarKind.local "n1"]) globalBody460_13

def globalData460 : Decl (BitVec 64) :=
.function { name := "extend_memory_cost2", inline := false, exported := false, params := [("s1", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("n1", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("s2", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("n2", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody460_14, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput460 := Pancake.PanLang.declToHOL globalData460
end InitECandidate.Proofs.FrontendStages.Declarations
