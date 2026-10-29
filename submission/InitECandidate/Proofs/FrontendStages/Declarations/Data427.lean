import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify411
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body427_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body427_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body427_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) body427_0 body427_1

def body427_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sl"))
  (Flapjack.Exp.const 0#64)) body427_0 body427_1

def body427_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bal_list_remove_idx"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sl"), Flapjack.Exp.const 40#64,
    Flapjack.Exp.var Flapjack.VarKind.local "idx"]

def body427_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_del"
  [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "slot"]

def body427_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sl"), Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.const 0#64)) body427_5 body427_1

def body427_7 : Prog (BitVec 64) :=
.seq body427_6 body427_0

def body427_8 : Prog (BitVec 64) :=
.seq body427_4 body427_7

def body427_9 : Prog (BitVec 64) :=
.seq body427_3 body427_8

def body427_10 : Prog (BitVec 64) :=
.decCall ("sl") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "slot"]) body427_9

def body427_11 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"), Flapjack.Exp.const 0#64])) body427_10

def body427_12 : Prog (BitVec 64) :=
.seq body427_2 body427_11

def body427_13 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.global "bal_accounts", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body427_12

def body427_14 : Prog (BitVec 64) :=
.seq body427_3 body427_4

def body427_15 : Prog (BitVec 64) :=
.seq body427_14 body427_6

def body427_16 : Prog (BitVec 64) :=
.seq body427_15 body427_0

def body427_17 : Prog (BitVec 64) :=
.decCall ("sl") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "slot"]) body427_16

def body427_18 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"), Flapjack.Exp.const 0#64])) body427_17

def body427_19 : Prog (BitVec 64) :=
.seq body427_2 body427_18

def body427_20 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.global "bal_accounts", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body427_19

def originalData427 : Decl (BitVec 64) :=
.function { name := "remove_storage_write", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("slot", Flapjack.Shape.one), ("idx", Flapjack.Shape.one)], body := body427_13, returnShape := (Flapjack.Shape.one) }
def simplifiedData427 : Decl (BitVec 64) :=
.function { name := "remove_storage_write", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("slot", Flapjack.Shape.one), ("idx", Flapjack.Shape.one)], body := body427_20, returnShape := (Flapjack.Shape.one) }
def original427 := Pancake.PanLang.declToHOL originalData427
def simplified427 := Pancake.PanLang.declToHOL simplifiedData427
end InitECandidate.Proofs.FrontendStages.Declarations
