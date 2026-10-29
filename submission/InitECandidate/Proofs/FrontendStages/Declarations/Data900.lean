import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify884
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body900_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "zero32"), none)) "alloc" [Flapjack.Exp.const 32#64]

def body900_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.global "zero32", Flapjack.Exp.const 32#64]

def body900_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "precompile_addrs"), none)) "alloc"
  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 18#64, Flapjack.Exp.const 20#64]]

def body900_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.global "precompile_addrs",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 18#64, Flapjack.Exp.const 20#64]]

def body900_4 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "precompile_addrs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 20#64],
      Flapjack.Exp.const 19#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body900_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body900_6 : Prog (BitVec 64) :=
.seq body900_4 body900_5

def body900_7 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 17#64)) body900_6

def body900_8 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "precompile_addrs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 17#64, Flapjack.Exp.const 20#64],
      Flapjack.Exp.const 18#64])
  (Flapjack.Exp.const 1#64)

def body900_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "beacon_roots_address"), none)) "alloc"
  [Flapjack.Exp.const 24#64]

def body900_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.var Flapjack.VarKind.global "beacon_roots_address", Flapjack.Exp.const 998902#64,
    Flapjack.Exp.const 15506597749690834871#64, Flapjack.Exp.const 13311379508201171970#64]

def body900_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "history_storage_address"), none)) "alloc"
  [Flapjack.Exp.const 24#64]

def body900_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.var Flapjack.VarKind.global "history_storage_address", Flapjack.Exp.const 63752#64,
    Flapjack.Exp.const 2878298490047003138#64, Flapjack.Exp.const 3700577164601600309#64]

def body900_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "withdrawal_request_address"), none)) "alloc"
  [Flapjack.Exp.const 24#64]

def body900_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.var Flapjack.VarKind.global "withdrawal_request_address", Flapjack.Exp.const 2401#64,
    Flapjack.Exp.const 17242047345525313946#64, Flapjack.Exp.const 15579492241104728066#64]

def body900_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "consolidation_request_address"), none)) "alloc"
  [Flapjack.Exp.const 24#64]

def body900_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.var Flapjack.VarKind.global "consolidation_request_address", Flapjack.Exp.const 48093#64,
    Flapjack.Exp.const 14397524800236640159#64, Flapjack.Exp.const 10016273463683084881#64]

def body900_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "builder_deposit_address"), none)) "alloc"
  [Flapjack.Exp.const 24#64]

def body900_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.var Flapjack.VarKind.global "builder_deposit_address", Flapjack.Exp.const 49140#64,
    Flapjack.Exp.const 7603452151126424148#64, Flapjack.Exp.const 760111669195932290#64]

def body900_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "builder_exit_address"), none)) "alloc"
  [Flapjack.Exp.const 24#64]

def body900_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.var Flapjack.VarKind.global "builder_exit_address", Flapjack.Exp.const 25814#64,
    Flapjack.Exp.const 8669529151676140297#64, Flapjack.Exp.const 4307224735379260034#64]

def body900_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "deposit_contract_address"), none)) "alloc"
  [Flapjack.Exp.const 24#64]

def body900_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.var Flapjack.VarKind.global "deposit_contract_address", Flapjack.Exp.const 0#64,
    Flapjack.Exp.const 2421447037043915651#64, Flapjack.Exp.const 11294470620239562234#64]

def body900_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "deposit_event_signature_hash"), none)) "alloc"
  [Flapjack.Exp.const 32#64]

def body900_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "deposit_event_signature_hash", Flapjack.Exp.const 0#64],
    Flapjack.Exp.const 7249595157780304706#64]

def body900_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "deposit_event_signature_hash", Flapjack.Exp.const 8#64],
    Flapjack.Exp.const 12676030261858484297#64]

def body900_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "deposit_event_signature_hash", Flapjack.Exp.const 16#64],
    Flapjack.Exp.const 16708898399860066458#64]

def body900_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "deposit_event_signature_hash", Flapjack.Exp.const 24#64],
    Flapjack.Exp.const 12074291595689605317#64]

def body900_28 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body900_29 : Prog (BitVec 64) :=
.seq body900_27 body900_28

def body900_30 : Prog (BitVec 64) :=
.seq body900_26 body900_29

def body900_31 : Prog (BitVec 64) :=
.seq body900_25 body900_30

def body900_32 : Prog (BitVec 64) :=
.seq body900_24 body900_31

def body900_33 : Prog (BitVec 64) :=
.seq body900_23 body900_32

def body900_34 : Prog (BitVec 64) :=
.seq body900_22 body900_33

def body900_35 : Prog (BitVec 64) :=
.seq body900_21 body900_34

def body900_36 : Prog (BitVec 64) :=
.seq body900_20 body900_35

def body900_37 : Prog (BitVec 64) :=
.seq body900_19 body900_36

def body900_38 : Prog (BitVec 64) :=
.seq body900_18 body900_37

def body900_39 : Prog (BitVec 64) :=
.seq body900_17 body900_38

def body900_40 : Prog (BitVec 64) :=
.seq body900_16 body900_39

def body900_41 : Prog (BitVec 64) :=
.seq body900_15 body900_40

def body900_42 : Prog (BitVec 64) :=
.seq body900_14 body900_41

def body900_43 : Prog (BitVec 64) :=
.seq body900_13 body900_42

def body900_44 : Prog (BitVec 64) :=
.seq body900_12 body900_43

def body900_45 : Prog (BitVec 64) :=
.seq body900_11 body900_44

def body900_46 : Prog (BitVec 64) :=
.seq body900_10 body900_45

def body900_47 : Prog (BitVec 64) :=
.seq body900_9 body900_46

def body900_48 : Prog (BitVec 64) :=
.seq body900_8 body900_47

def body900_49 : Prog (BitVec 64) :=
.seq body900_7 body900_48

def body900_50 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body900_49

def body900_51 : Prog (BitVec 64) :=
.seq body900_3 body900_50

def body900_52 : Prog (BitVec 64) :=
.seq body900_2 body900_51

def body900_53 : Prog (BitVec 64) :=
.seq body900_1 body900_52

def body900_54 : Prog (BitVec 64) :=
.seq body900_0 body900_53

def body900_55 : Prog (BitVec 64) :=
.seq body900_0 body900_1

def body900_56 : Prog (BitVec 64) :=
.seq body900_55 body900_2

def body900_57 : Prog (BitVec 64) :=
.seq body900_56 body900_3

def body900_58 : Prog (BitVec 64) :=
.seq body900_7 body900_8

def body900_59 : Prog (BitVec 64) :=
.seq body900_58 body900_9

def body900_60 : Prog (BitVec 64) :=
.seq body900_59 body900_10

def body900_61 : Prog (BitVec 64) :=
.seq body900_60 body900_11

def body900_62 : Prog (BitVec 64) :=
.seq body900_61 body900_12

def body900_63 : Prog (BitVec 64) :=
.seq body900_62 body900_13

def body900_64 : Prog (BitVec 64) :=
.seq body900_63 body900_14

def body900_65 : Prog (BitVec 64) :=
.seq body900_64 body900_15

def body900_66 : Prog (BitVec 64) :=
.seq body900_65 body900_16

def body900_67 : Prog (BitVec 64) :=
.seq body900_66 body900_17

def body900_68 : Prog (BitVec 64) :=
.seq body900_67 body900_18

def body900_69 : Prog (BitVec 64) :=
.seq body900_68 body900_19

def body900_70 : Prog (BitVec 64) :=
.seq body900_69 body900_20

def body900_71 : Prog (BitVec 64) :=
.seq body900_70 body900_21

def body900_72 : Prog (BitVec 64) :=
.seq body900_71 body900_22

def body900_73 : Prog (BitVec 64) :=
.seq body900_72 body900_23

def body900_74 : Prog (BitVec 64) :=
.seq body900_73 body900_24

def body900_75 : Prog (BitVec 64) :=
.seq body900_74 body900_25

def body900_76 : Prog (BitVec 64) :=
.seq body900_75 body900_26

def body900_77 : Prog (BitVec 64) :=
.seq body900_76 body900_27

def body900_78 : Prog (BitVec 64) :=
.seq body900_77 body900_28

def body900_79 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body900_78

def body900_80 : Prog (BitVec 64) :=
.seq body900_57 body900_79

def originalData900 : Decl (BitVec 64) :=
.function { name := "fork_init", inline := false, exported := false, params := [], body := body900_54, returnShape := (Flapjack.Shape.one) }
def simplifiedData900 : Decl (BitVec 64) :=
.function { name := "fork_init", inline := false, exported := false, params := [], body := body900_80, returnShape := (Flapjack.Shape.one) }
def original900 := Pancake.PanLang.declToHOL originalData900
def simplified900 := Pancake.PanLang.declToHOL simplifiedData900
end InitECandidate.Proofs.FrontendStages.Declarations
