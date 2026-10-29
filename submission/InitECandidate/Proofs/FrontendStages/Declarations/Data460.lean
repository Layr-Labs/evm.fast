import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify444
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body460_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def body460_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body460_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 18446744073709551615#64)) body460_0 body460_1

def body460_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "saved",
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")])

def body460_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "saved")

def body460_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "b")

def body460_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.const 18446744073709551615#64)) body460_5 body460_1

def body460_7 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
          Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")],
      Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
          Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]])

def body460_8 : Prog (BitVec 64) :=
.seq body460_6 body460_7

def body460_9 : Prog (BitVec 64) :=
.seq body460_4 body460_8

def body460_10 : Prog (BitVec 64) :=
.decCall ("b") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "s2", Flapjack.Exp.var Flapjack.VarKind.local "n2"]) body460_9

def body460_11 : Prog (BitVec 64) :=
.seq body460_3 body460_10

def body460_12 : Prog (BitVec 64) :=
.dec ("saved") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 32#64])) body460_11

def body460_13 : Prog (BitVec 64) :=
.seq body460_2 body460_12

def body460_14 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "s1", Flapjack.Exp.var Flapjack.VarKind.local "n1"]) body460_13

def body460_15 : Prog (BitVec 64) :=
.seq body460_4 body460_6

def body460_16 : Prog (BitVec 64) :=
.seq body460_15 body460_7

def body460_17 : Prog (BitVec 64) :=
.decCall ("b") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "s2", Flapjack.Exp.var Flapjack.VarKind.local "n2"]) body460_16

def body460_18 : Prog (BitVec 64) :=
.seq body460_3 body460_17

def body460_19 : Prog (BitVec 64) :=
.dec ("saved") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 32#64])) body460_18

def body460_20 : Prog (BitVec 64) :=
.seq body460_2 body460_19

def body460_21 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "s1", Flapjack.Exp.var Flapjack.VarKind.local "n1"]) body460_20

def originalData460 : Decl (BitVec 64) :=
.function { name := "extend_memory_cost2", inline := false, exported := false, params := [("s1", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("n1", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("s2", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("n2", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body460_14, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData460 : Decl (BitVec 64) :=
.function { name := "extend_memory_cost2", inline := false, exported := false, params := [("s1", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("n1", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("s2", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("n2", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body460_21, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original460 := Pancake.PanLang.declToHOL originalData460
def simplified460 := Pancake.PanLang.declToHOL simplifiedData460
end InitECandidate.Proofs.FrontendStages.Declarations
